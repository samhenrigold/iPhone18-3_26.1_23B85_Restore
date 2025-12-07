@interface AMSUIWebFlowController
- (AMSUIWebClientContext)context;
- (AMSUIWebContainerViewController)currentContainer;
- (AMSUIWebContainerViewController)rootContainer;
- (AMSUIWebFlowController)initWithRootContainer:(id)container context:(id)context;
- (id)_refreshPageWithForContainer:(id)container options:(id)options isRetry:(BOOL)retry;
- (id)dismissViewController;
- (id)replaceWithPageModel:(id)model forContainer:(id)container options:(id)options;
- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)presentation;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_takeSnapshotFromContainer:(id)container completion:(id)completion;
- (void)performSafeTransitionFrom:(id)from block:(id)block;
- (void)popViewController;
- (void)popViewControllerToRelativeIndex:(int64_t)index;
- (void)presentWithOptions:(id)options;
- (void)pushWithOptions:(id)options;
- (void)startTimeout:(double)timeout queue:(id)queue block:(id)block;
- (void)startTimeoutInterruption;
- (void)stopTimeoutInterruption;
@end

@implementation AMSUIWebFlowController

- (AMSUIWebFlowController)initWithRootContainer:(id)container context:(id)context
{
  containerCopy = container;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = AMSUIWebFlowController;
  v8 = [(AMSUIWebFlowController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    objc_storeWeak(&v9->_rootContainer, containerCopy);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    timeouts = v9->_timeouts;
    v9->_timeouts = v10;
  }

  return v9;
}

- (AMSUIWebContainerViewController)currentContainer
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  rootContainer = [(AMSUIWebFlowController *)self rootContainer];
  nextContainer = [rootContainer nextContainer];

  if (nextContainer)
  {
    do
    {
      nextContainer2 = [rootContainer nextContainer];

      v5NextContainer = [nextContainer2 nextContainer];

      rootContainer = nextContainer2;
    }

    while (v5NextContainer);
  }

  else
  {
    nextContainer2 = rootContainer;
  }

  return nextContainer2;
}

- (id)dismissViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.ios.StoreKitUIService"];

  v7 = currentContainer;
  if (v6)
  {
    currentContainer2 = [(AMSUIWebFlowController *)self currentContainer];
    navigationController = [currentContainer2 navigationController];
    v10 = navigationController;
    if (navigationController)
    {
      v11 = navigationController;
    }

    else
    {
      v11 = currentContainer;
    }

    v7 = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E698CA48]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__AMSUIWebFlowController_dismissViewController__block_invoke;
  v18[3] = &unk_1E7F24590;
  v19 = currentContainer;
  selfCopy = self;
  v13 = v12;
  v21 = v13;
  v14 = currentContainer;
  [v7 ams_dismissViewControllerAnimated:1 includePresented:1 completion:v18];
  v15 = v21;
  v16 = v13;

  return v13;
}

uint64_t __47__AMSUIWebFlowController_dismissViewController__block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [a1[4] handleModalDismissal];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = [a1[5] context];
    v6 = [v5 logKey];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Completed dismiss", &v8, 0x16u);
  }

  return [a1[6] finishWithSuccess];
}

- (void)performSafeTransitionFrom:(id)from block:(id)block
{
  fromCopy = from;
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke;
  v9[3] = &unk_1E7F245E0;
  v10 = fromCopy;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = fromCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCoordinator];
  v3 = [v2 isInteractive];

  if (v3)
  {
    v4 = [*(a1 + 32) transitionCoordinator];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke_2;
    v6[3] = &unk_1E7F262F0;
    v7 = *(a1 + 40);
    [v4 notifyWhenInteractionChangesUsingBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)popViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  v7 = [(AMSUIWebFlowController *)self navigationControllerForViewController:currentContainer];

  viewControllers = [v7 viewControllers];
  v5 = [viewControllers count];

  if (v5 >= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [v7 settingsCompatiblePopViewController:{objc_msgSend(WeakRetained, "disableSettingsNavigationProxy")}];
  }
}

- (void)popViewControllerToRelativeIndex:(int64_t)index
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  context = [(AMSUIWebFlowController *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  pushPresentationDelegate = [currentContainer pushPresentationDelegate];

  if (pushPresentationDelegate)
  {
    do
    {
      pushPresentationDelegate2 = [currentContainer pushPresentationDelegate];

      v21PushPresentationDelegate = [pushPresentationDelegate2 pushPresentationDelegate];

      v10 = pushPresentationDelegate2;
      currentContainer = pushPresentationDelegate2;
    }

    while (v21PushPresentationDelegate);
  }

  else
  {
    v10 = currentContainer;
  }

  v22 = v10;
  currentContainer2 = [(AMSUIWebFlowController *)self currentContainer];
  v12 = [(AMSUIWebFlowController *)self navigationControllerForViewController:currentContainer2];

  WeakRetained = objc_loadWeakRetained(&self->_context);
  v14 = [v12 settingsCompatibleViewControllers:{objc_msgSend(WeakRetained, "disableSettingsNavigationProxy")}];

  v15 = [v14 count];
  while (--v15 >= 0)
  {
    v16 = [v14 objectAtIndexedSubscript:v15];
    v17 = [v16 ams_hasDescendentChildViewController:v22];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_10:
  v18 = v15 + index;
  if (index || v18 != [v14 count] - 1)
  {
    if ((v18 & 0x8000000000000000) != 0 || v18 >= [v14 count])
    {
      [(AMSUIWebFlowController *)self popViewController];
    }

    else
    {
      v19 = [v14 objectAtIndexedSubscript:v18];
      v20 = objc_loadWeakRetained(&self->_context);
      [v12 settingsCompatiblePopToViewController:v19 disableProxy:{objc_msgSend(v20, "disableSettingsNavigationProxy")}];
    }
  }
}

- (void)presentWithOptions:(id)options
{
  v52 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebFlowController *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v49 = v7;
    v50 = 2114;
    v51 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Presenting new page", buf, 0x16u);
  }

  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  loadingPage = [optionsCopy loadingPage];
  navigationBar = [loadingPage navigationBar];
  v13 = navigationBar;
  if (navigationBar)
  {
    navigationBar2 = navigationBar;
  }

  else
  {
    navigationBar2 = [optionsCopy navigationBar];
  }

  v15 = navigationBar2;

  v16 = [AMSUIWebPlaceholderViewController alloc];
  loadingPage2 = [optionsCopy loadingPage];
  context2 = [(AMSUIWebFlowController *)self context];
  appearance = [currentContainer appearance];
  v20 = [(AMSUIWebPlaceholderViewController *)v16 initWithModel:loadingPage2 context:context2 appearance:appearance];

  [(AMSUIWebPlaceholderViewController *)v20 setAnimateFadeIn:1];
  appearance2 = [currentContainer appearance];
  v22 = [appearance2 copy];

  [v22 setClientHandlesDismissability:0];
  v23 = [AMSUIWebContainerViewController alloc];
  context3 = [(AMSUIWebFlowController *)self context];
  v25 = [(AMSUIWebContainerViewController *)v23 initWithViewController:v20 appearance:v22 navigationBar:v15 context:context3];

  pageData = [optionsCopy pageData];
  [(AMSUIWebContainerViewController *)v25 setPageInfo:pageData];

  appearance3 = [(AMSUIWebContainerViewController *)v25 appearance];
  backgroundColor = [optionsCopy backgroundColor];
  [appearance3 updateBackgroundColorWithJSString:backgroundColor];

  [(AMSUIWebContainerViewController *)v25 setModalPresentationDelegate:currentContainer];
  -[AMSUIWebContainerViewController setContainerIndex:](v25, "setContainerIndex:", [currentContainer containerIndex] + 1);
  [currentContainer setNextContainer:v25];
  v29 = 2 * ([optionsCopy modalPresentationStyle] != 1);
  v30 = 2 * ([optionsCopy modalTransitionStyle] == 1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke;
  aBlock[3] = &unk_1E7F26318;
  v31 = v25;
  v43 = v31;
  selfCopy = self;
  v46 = v29;
  v47 = v30;
  v45 = currentContainer;
  v32 = currentContainer;
  v33 = _Block_copy(aBlock);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke_2;
  v37[3] = &unk_1E7F26368;
  v38 = optionsCopy;
  selfCopy2 = self;
  v40 = v31;
  v41 = v33;
  v34 = v31;
  v35 = v33;
  v36 = optionsCopy;
  [(AMSUIWebFlowController *)self _takeSnapshotFromContainer:v32 completion:v37];
}

void __45__AMSUIWebFlowController_presentWithOptions___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 32)];
  [v4 setDelegate:*(a1 + 40)];
  [v4 setModalPresentationStyle:*(a1 + 56)];
  [v4 setModalTransitionStyle:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = [v4 presentationController];
  [v3 setDelegate:v2];

  [*(a1 + 48) presentViewController:v4 animated:1 completion:0];
}

void __45__AMSUIWebFlowController_presentWithOptions___block_invoke_2(id *a1)
{
  if ([a1[4] deferredPresentation])
  {
    v2 = [a1[5] context];
    v3 = [v2 flowController];
    v4 = [v3 refreshPageForContainer:a1[6] options:a1[4]];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke_3;
    v6[3] = &unk_1E7F26340;
    v7 = a1[6];
    v8 = a1[7];
    [v4 addFinishBlock:v6];
  }

  else
  {
    v5 = *(a1[7] + 2);

    v5();
  }
}

uint64_t __45__AMSUIWebFlowController_presentWithOptions___block_invoke_3(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(a1 + 32) setShouldSkipInitialRefresh:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)pushWithOptions:(id)options
{
  v49 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  v6 = [(AMSUIWebFlowController *)self navigationControllerForViewController:currentContainer];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v6)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [(AMSUIWebPlaceholderViewController *)mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      context = [(AMSUIWebFlowController *)self context];
      logKey = [context logKey];
      *buf = 138543618;
      v46 = v10;
      v47 = 2114;
      v48 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Pushing new page", buf, 0x16u);
    }

    currentContainer2 = [(AMSUIWebFlowController *)self currentContainer];
    v14 = [AMSUIWebPlaceholderViewController alloc];
    loadingPage = [optionsCopy loadingPage];
    context2 = [(AMSUIWebFlowController *)self context];
    appearance = [currentContainer2 appearance];
    mEMORY[0x1E698C968]2 = [(AMSUIWebPlaceholderViewController *)v14 initWithModel:loadingPage context:context2 appearance:appearance];

    [(AMSUIWebPlaceholderViewController *)mEMORY[0x1E698C968]2 setAnimateFadeIn:1];
    loadingPage2 = [optionsCopy loadingPage];
    navigationBar = [loadingPage2 navigationBar];
    v20 = navigationBar;
    if (navigationBar)
    {
      navigationBar2 = navigationBar;
    }

    else
    {
      navigationBar2 = [optionsCopy navigationBar];
    }

    oSLogObject2 = navigationBar2;

    v26 = [AMSUIWebContainerViewController alloc];
    appearance2 = [currentContainer2 appearance];
    context3 = [(AMSUIWebFlowController *)self context];
    v29 = [(AMSUIWebContainerViewController *)v26 initWithViewController:mEMORY[0x1E698C968]2 appearance:appearance2 navigationBar:oSLogObject2 context:context3];

    appearance3 = [(AMSUIWebContainerViewController *)v29 appearance];
    backgroundColor = [optionsCopy backgroundColor];
    [appearance3 updateBackgroundColorWithJSString:backgroundColor];

    pageData = [optionsCopy pageData];
    [(AMSUIWebContainerViewController *)v29 setPageInfo:pageData];

    modalPresentationDelegate = [currentContainer2 modalPresentationDelegate];
    [(AMSUIWebContainerViewController *)v29 setModalPresentationDelegate:modalPresentationDelegate];

    [(AMSUIWebContainerViewController *)v29 setPushPresentationDelegate:currentContainer2];
    -[AMSUIWebContainerViewController setContainerIndex:](v29, "setContainerIndex:", [currentContainer2 containerIndex] + 1);
    [currentContainer2 setNextContainer:v29];
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __42__AMSUIWebFlowController_pushWithOptions___block_invoke;
    v40 = &unk_1E7F24A88;
    v41 = optionsCopy;
    selfCopy = self;
    v43 = currentContainer2;
    v44 = v29;
    v34 = v29;
    v35 = currentContainer2;
    v36 = _Block_copy(&v37);
    [(AMSUIWebFlowController *)self _takeSnapshotFromContainer:v35 completion:v36, v37, v38, v39, v40];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [(AMSUIWebPlaceholderViewController *)mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      context4 = [(AMSUIWebFlowController *)self context];
      logKey2 = [context4 logKey];
      *buf = 138543618;
      v46 = v23;
      v47 = 2114;
      v48 = logKey2;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Push failed, no navigation controller found.", buf, 0x16u);
    }
  }
}

void __42__AMSUIWebFlowController_pushWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredPresentation];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 context];
    v5 = [v4 flowController];
    v6 = [v5 refreshPageForContainer:*(a1 + 56) options:*(a1 + 32)];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__AMSUIWebFlowController_pushWithOptions___block_invoke_2;
    v13[3] = &unk_1E7F24568;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v6 addFinishBlock:v13];
  }

  else
  {
    v12 = [v3 navigationControllerForViewController:*(a1 + 48)];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) context];
    [v12 settingsCompatiblePushViewController:v10 disableProxy:{objc_msgSend(v11, "disableSettingsNavigationProxy")}];
  }
}

void __42__AMSUIWebFlowController_pushWithOptions___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(a1 + 32) setShouldSkipInitialRefresh:1];
  v4 = [*(a1 + 40) navigationControllerForViewController:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  [v4 settingsCompatiblePushViewController:v2 disableProxy:{objc_msgSend(v3, "disableSettingsNavigationProxy")}];
}

- (id)replaceWithPageModel:(id)model forContainer:(id)container options:(id)options
{
  modelCopy = model;
  containerCopy = container;
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  loadPage = [modelCopy loadPage];
  objc_initWeak(&location, containerCopy);
  objc_initWeak(&from, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke;
  v17[3] = &unk_1E7F263B8;
  v17[4] = self;
  v12 = modelCopy;
  v18 = v12;
  v13 = containerCopy;
  v19 = v13;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v14 = optionsCopy;
  v20 = v14;
  [loadPage addSuccessBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_12;
  v16[3] = &unk_1E7F24410;
  v16[4] = self;
  [loadPage addErrorBlock:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return loadPage;
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_2;
  v3[3] = &unk_1E7F263B8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 64));
  objc_copyWeak(&v8, (a1 + 72));
  v6 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) windowSize];
  v4 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_3;
  v8[3] = &unk_1E7F26390;
  objc_copyWeak(&v11, (a1 + 64));
  objc_copyWeak(&v12, (a1 + 72));
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v2 _setWindowSize:v7 onContainer:v8 completion:{v4, v6}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_3(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if ([a1[4] reuseExistingPage] && (objc_msgSend(WeakRetained, "containedViewController"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v6 = [WeakRetained containedViewController];
  }

  else
  {
    v6 = [a1[5] createViewControllerForContainer:WeakRetained];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [WeakRetained appearance];
    v9 = [a1[5] backgroundColor];
    [v8 updateBackgroundColorWithJSString:v9];

    if (objc_opt_respondsToSelector())
    {
      v10 = a1[5];
      v11 = [WeakRetained appearance];
      [v7 willPresentPageModel:v10 appearance:v11];
    }

    [WeakRetained updateRefreshControlForPageModel:a1[5]];
    [WeakRetained updateSafeAreaEdgesForPageModel:a1[5]];
    v12 = [a1[5] navigationBar];
    [WeakRetained applyNavigationModel:v12];

    [WeakRetained setupToolbarAnimated:0];
    v13 = [WeakRetained containedViewController];

    if (v13 != v7)
    {
      [WeakRetained setDisableReappearPlaceholder:{objc_msgSend(a1[5], "disableReappearPlaceholder")}];
      [WeakRetained replaceContentWithViewController:v7 animated:objc_msgSend(a1[4] pageModel:"animated") completion:{a1[5], 0}];
      v14 = [a1[5] impressionEvent];

      if (v14)
      {
        v15 = [v3 context];
        v16 = [v15 metrics];
        v17 = [a1[5] impressionEvent];
        [v16 enqueueEvent:v17];
      }
    }
  }

  else
  {
    v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = [v3 context];
      v22 = [v21 logKey];
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to present a nil view controller", &v23, 0x16u);
    }
  }
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_12(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) context];
    v6 = [v5 logKey];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encountered error when loading page.", &v7, 0x16u);
  }
}

- (void)startTimeoutInterruption
{
  v24 = *MEMORY[0x1E69E9840];
  timeoutLock = [(AMSUIWebFlowController *)self timeoutLock];
  [timeoutLock lock];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    context = [(AMSUIWebFlowController *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Starting timeout interruption.", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  timeouts = [(AMSUIWebFlowController *)self timeouts];
  v10 = [timeouts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(timeouts);
        }

        [*(*(&v15 + 1) + 8 * v13++) pause];
      }

      while (v11 != v13);
      v11 = [timeouts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  timeoutLock2 = [(AMSUIWebFlowController *)self timeoutLock];
  [timeoutLock2 unlock];
}

- (void)startTimeout:(double)timeout queue:(id)queue block:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = MEMORY[0x1E698C968];
  queueCopy = queue;
  sharedWebUIConfig = [v9 sharedWebUIConfig];
  if (!sharedWebUIConfig)
  {
    sharedWebUIConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedWebUIConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    context = [(AMSUIWebFlowController *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v28 = v13;
    v29 = 2114;
    v30 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Starting timeout...", buf, 0x16u);
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __51__AMSUIWebFlowController_startTimeout_queue_block___block_invoke;
  v24 = &unk_1E7F263E0;
  selfCopy = self;
  v26 = blockCopy;
  v16 = blockCopy;
  v17 = [AMSUIWebFlowTimeout timeoutWithTimeout:queueCopy queue:&v21 block:timeout];

  v18 = [(AMSUIWebFlowController *)self timeoutLock:v21];
  [v18 lock];

  timeouts = [(AMSUIWebFlowController *)self timeouts];
  [timeouts addObject:v17];

  [v17 start];
  timeoutLock = [(AMSUIWebFlowController *)self timeoutLock];
  [timeoutLock unlock];
}

uint64_t __51__AMSUIWebFlowController_startTimeout_queue_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 timeoutLock];
  [v5 lock];

  v6 = [*(a1 + 32) timeouts];
  [v6 removeObject:v4];

  v7 = [*(a1 + 32) timeoutLock];
  [v7 unlock];

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)stopTimeoutInterruption
{
  v25 = *MEMORY[0x1E69E9840];
  timeoutLock = [(AMSUIWebFlowController *)self timeoutLock];
  [timeoutLock lock];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    context = [(AMSUIWebFlowController *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Stopping timeout interruption.", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  timeouts = [(AMSUIWebFlowController *)self timeouts];
  v10 = [timeouts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(timeouts);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 reset];
        [v14 start];
      }

      v11 = [timeouts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  timeoutLock2 = [(AMSUIWebFlowController *)self timeoutLock];
  [timeoutLock2 unlock];
}

- (id)_refreshPageWithForContainer:(id)container options:(id)options isRetry:(BOOL)retry
{
  retryCopy = retry;
  v54[6] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v38 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(AMSUIWebFlowController *)self setCurrentRefreshToken:uUIDString];
  objc_initWeak(&location, self);
  objc_initWeak(&from, containerCopy);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke;
  v47[3] = &unk_1E7F26430;
  objc_copyWeak(&v49, &location);
  objc_copyWeak(&v50, &from);
  v11 = optionsCopy;
  v48 = v11;
  [v38 addErrorBlock:v47];
  if (([v11 disableTimeout] & 1) == 0)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2_27;
    v45[3] = &unk_1E7F242D0;
    v46 = v38;
    [(AMSUIWebFlowController *)self startTimeout:MEMORY[0x1E69E96A0] queue:v45 block:10.0];
  }

  if (([v11 deferredPresentation] & 1) == 0)
  {
    containedViewController = [containerCopy containedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      loadingPage = [v11 loadingPage];
      v15 = loadingPage;
      if (loadingPage)
      {
        v16 = loadingPage;
      }

      else
      {
        v17 = [AMSUIWebLoadingPageModel alloc];
        context = [(AMSUIWebFlowController *)self context];
        v16 = [(AMSUIWebLoadingPageModel *)v17 initWithContext:context];
      }

      v19 = [(AMSUIWebFlowController *)self replaceWithPageModel:v16 forContainer:containerCopy options:0];
    }
  }

  v53[0] = @"data";
  pageData = [v11 pageData];
  v21 = pageData;
  v22 = MEMORY[0x1E695E0F8];
  if (pageData)
  {
    v22 = pageData;
  }

  v54[0] = v22;
  v53[1] = @"isRetry";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:retryCopy];
  v54[1] = v23;
  v53[2] = @"navigationIndex";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(containerCopy, "ams_navigationIndex")}];
  v54[2] = v24;
  v53[3] = @"previousNavigationIndex";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUIWebFlowController previousNavigationIndex](self, "previousNavigationIndex")}];
  v54[3] = v25;
  v53[4] = @"pageIndex";
  v26 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(containerCopy, "containerIndex")}];
  v54[4] = v26;
  v53[5] = @"previousPageIndex";
  v27 = [MEMORY[0x1E696AD98] numberWithLong:{-[AMSUIWebFlowController previousPageIndex](self, "previousPageIndex")}];
  v54[5] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:6];

  context2 = [(AMSUIWebFlowController *)self context];
  dataProvider = [context2 dataProvider];
  v31 = [dataProvider loadPageModelWithInfo:v28];

  -[AMSUIWebFlowController setPreviousNavigationIndex:](self, "setPreviousNavigationIndex:", [containerCopy ams_navigationIndex]);
  -[AMSUIWebFlowController setPreviousPageIndex:](self, "setPreviousPageIndex:", [containerCopy containerIndex]);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_3;
  v39[3] = &unk_1E7F26480;
  objc_copyWeak(&v43, &location);
  objc_copyWeak(&v44, &from);
  v32 = v38;
  v40 = v32;
  v33 = uUIDString;
  v41 = v33;
  v34 = v11;
  v42 = v34;
  [v31 addFinishBlock:v39];
  binaryPromiseAdapter = [v32 binaryPromiseAdapter];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return binaryPromiseAdapter;
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2;
  v5[3] = &unk_1E7F26390;
  objc_copyWeak(&v8, a1 + 5);
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if (([a1[4] suppressErrorPage] & 1) == 0)
  {
    v4 = [WeakRetained currentContainer];
    v5 = [v4 containedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v7)
      {
        v7 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        *buf = 138543618;
        v30 = v9;
        v31 = 2114;
        v32 = v10;
        _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping error page since container is currently an error.", buf, 0x16u);
      }

LABEL_7:

      goto LABEL_17;
    }

    v11 = [a1[5] userInfo];
    v12 = [v11 objectForKeyedSubscript:@"skipErrorView"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [a1[5] userInfo];
      v14 = [v13 objectForKeyedSubscript:@"skipErrorView"];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v7)
        {
          v7 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v8 = [v7 OSLogObject];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = AMSLogKey();
          *buf = 138543618;
          v30 = v16;
          v31 = 2114;
          v32 = v17;
          _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping error page.", buf, 0x16u);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    v18 = [AMSUIWebErrorPageModel alloc];
    v19 = a1[5];
    v20 = [WeakRetained context];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_25;
    v25[3] = &unk_1E7F26408;
    objc_copyWeak(&v27, a1 + 6);
    objc_copyWeak(&v28, a1 + 7);
    v26 = a1[4];
    v21 = [(AMSUIWebErrorPageModel *)v18 initWithError:v19 context:v20 actionBlock:v25];

    v22 = [WeakRetained context];
    v23 = [v22 flowController];
    v24 = [v23 replaceWithPageModel:v21 forContainer:v3 options:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
  }

LABEL_17:
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_25(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 1) == 0)
  {
    v5 = [WeakRetained _refreshPageWithForContainer:v4 options:*(a1 + 32) isRetry:1];
  }
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2_27(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = AMSErrorWithFormat();
    [*(a1 + 32) finishWithError:v2];
  }
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = [WeakRetained context];
  v10 = [v9 dataProvider];
  v11 = [v10 loadPageRenderData];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_4;
  v24 = &unk_1E7F26458;
  v12 = v8;
  v25 = v12;
  v13 = v5;
  v26 = v13;
  [v11 addFinishBlock:&v21];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    if (v6)
    {
      [*(a1 + 32) finishWithError:v6];
      goto LABEL_11;
    }

    v14 = [WeakRetained currentContainer];

    if (v14 == v12)
    {
      v16 = *(a1 + 40);
      v17 = [WeakRetained currentRefreshToken];
      LOBYTE(v16) = [v16 isEqualToString:v17];

      if (v16)
      {
        v18 = [WeakRetained replaceWithPageModel:v13 forContainer:v12 options:*(a1 + 48)];
        v19 = *(a1 + 32);
        v20 = [v18 promiseAdapter];
        [v19 finishWithPromise:v20];

LABEL_10:
        goto LABEL_11;
      }

      v15 = *(a1 + 32);
    }

    else
    {
      v15 = *(a1 + 32);
    }

    v18 = AMSCustomError();
    [v15 finishWithError:v18];
    goto LABEL_10;
  }

LABEL_11:
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = MEMORY[0x1E695DF90];
  v6 = [*(a1 + 32) pageMetrics];
  v7 = [v5 dictionaryWithDictionary:v6];

  v8 = [*(a1 + 40) navigationBar];
  v9 = [v8 title];
  [v7 setObject:v9 forKeyedSubscript:@"pageType"];

  v10 = [*(a1 + 32) pageRenderPresenter];
  [v10 endWithActivity:0 pageMetrics:v7];

  if (!a3)
  {
    v11 = [*(a1 + 32) pageRenderPresenter];
    v12 = [v14 objectForKeyedSubscript:@"properties"];
    [v11 importTimings:v12];
  }

  v13 = [*(a1 + 32) pageRenderPresenter];
  [v13 enqueueEvent];
}

- (void)_takeSnapshotFromContainer:(id)container completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  containedViewController = [containerCopy containedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containedViewController2 = [containerCopy containedViewController];
    [containerCopy cacheScrollViewPositionFor:containedViewController2];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5;
    v25 = __Block_byref_object_dispose__5;
    v11 = [AMSUIWebPlaceholderViewController alloc];
    containedViewController3 = [containerCopy containedViewController];
    context = [(AMSUIWebFlowController *)self context];
    appearance = [containerCopy appearance];
    v26 = [(AMSUIWebPlaceholderViewController *)v11 initWithSnapshot:containedViewController3 context:context appearance:appearance];

    objc_initWeak(&location, containerCopy);
    v15 = v22[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__AMSUIWebFlowController__takeSnapshotFromContainer_completion___block_invoke;
    v16[3] = &unk_1E7F264A8;
    objc_copyWeak(&v19, &location);
    v18 = &v21;
    v17 = completionCopy;
    [v15 awaitSnapshotWithCompletion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v21, 8);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __64__AMSUIWebFlowController__takeSnapshotFromContainer_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained containedViewController];
  [*(*(*(a1 + 40) + 8) + 40) setOriginalViewController:v2];

  [WeakRetained replaceContentWithViewController:*(*(*(a1 + 40) + 8) + 40) animated:0 pageModel:0 completion:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  supportedInterfaceOrientations = [currentContainer supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)presentation
{
  currentContainer = [(AMSUIWebFlowController *)self currentContainer];
  preferredInterfaceOrientationForPresentation = [currentContainer preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (AMSUIWebContainerViewController)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end