@interface AMSUIWebContainerViewController
- (AMSUIWebClientContext)context;
- (AMSUIWebContainerViewController)initWithViewController:(id)controller appearance:(id)appearance navigationBar:(id)bar context:(id)context;
- (AMSUIWebContainerViewController)nextContainer;
- (AMSUIWebPresentationDelegate)modalPresentationDelegate;
- (AMSUIWebPresentationDelegate)pushPresentationDelegate;
- (CGPoint)scrollPosition;
- (NSDictionary)pageMetrics;
- (UINavigationItem)lastNavigationItem;
- (id)_actionBlockForWebButtonModel:(id)model;
- (id)_buttonModelForBarButtonItemModel:(id)model;
- (id)_createBarButtonItemWithModel:(id)model navigationBarModel:(id)barModel;
- (id)_makeCustomNavigationBarAppearanceWithModel:(id)model;
- (id)_refreshWithOptions:(id)options;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)navigationItem;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)_determineActivePresentationType;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustWebViewScrollFor:(id)for completion:(id)completion;
- (void)_applyAppearance;
- (void)_handlePushDismissal;
- (void)_postEvent:(id)event;
- (void)_prepareToMoveWebViewToVC:(id)c completion:(id)completion;
- (void)_refreshForInitialAppear;
- (void)_scrollTo:(CGPoint)to webView:(id)view completion:(id)completion;
- (void)_setupNavBarAnimated:(BOOL)animated;
- (void)applyNavigationBarModel:(id)model toNavigationController:(id)controller animated:(BOOL)animated;
- (void)applyNavigationModel:(id)model;
- (void)cacheScrollViewPositionFor:(id)for;
- (void)contentWasReplacedAnimated:(BOOL)animated;
- (void)dealloc;
- (void)didDismissController:(id)controller;
- (void)handleModalDismissal;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)replaceContentWithViewController:(id)controller animated:(BOOL)animated pageModel:(id)model completion:(id)completion;
- (void)setupToolbarAnimated:(BOOL)animated;
- (void)updateRefreshControlForPageModel:(id)model;
- (void)updateSafeAreaEdgesForPageModel:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIWebContainerViewController

- (AMSUIWebContainerViewController)initWithViewController:(id)controller appearance:(id)appearance navigationBar:(id)bar context:(id)context
{
  controllerCopy = controller;
  appearanceCopy = appearance;
  barCopy = bar;
  contextCopy = context;
  v15 = [(AMSUIWebContainerViewController *)self initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    v15->_activePresentationType = 0;
    v17 = [appearanceCopy copy];
    appearance = v16->_appearance;
    v16->_appearance = v17;

    objc_storeStrong(&v16->_containedViewController, controller);
    objc_storeWeak(&v16->_context, contextCopy);
    v16->_dismissCalled = 0;
    objc_storeStrong(&v16->_navigationBarModel, bar);
  }

  return v16;
}

- (void)dealloc
{
  if (![(AMSUIWebContainerViewController *)self dismissCalled])
  {
    pushPresentationDelegate = [(AMSUIWebContainerViewController *)self pushPresentationDelegate];

    if (!pushPresentationDelegate)
    {
      [(AMSUIWebContainerViewController *)self handleModalDismissal];
    }
  }

  v4.receiver = self;
  v4.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v4 dealloc];
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  v5 = [containedViewController contentScrollViewForEdge:edge];

  return v5;
}

- (unint64_t)supportedInterfaceOrientations
{
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  supportedInterfaceOrientations = [containedViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  preferredInterfaceOrientationForPresentation = [containedViewController preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = AMSUIWebContainerViewController;
  [(AMSUICommonViewController *)&v11 loadView];
  [(AMSUIWebContainerViewController *)self setTransitioningDelegate:self];
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  [(AMSUICommonViewController *)self setChildViewController:containedViewController];

  v4 = objc_alloc(MEMORY[0x1E698CAB0]);
  context = [(AMSUIWebContainerViewController *)self context];
  v6 = [context bag];
  context2 = [(AMSUIWebContainerViewController *)self context];
  metrics = [context2 metrics];
  v9 = [v4 initWithBag:v6 metrics:metrics];
  [(AMSUIWebContainerViewController *)self setPageRenderPresenter:v9];

  pageRenderPresenter = [(AMSUIWebContainerViewController *)self pageRenderPresenter];
  [pageRenderPresenter startWithActivity:0];
}

- (id)navigationItem
{
  parentViewController = [(AMSUIWebContainerViewController *)self parentViewController];
  ams_navigationItemViewController = [parentViewController ams_navigationItemViewController];

  if (objc_opt_respondsToSelector())
  {
    navigationItem = [ams_navigationItemViewController navigationItem];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AMSUIWebContainerViewController;
    navigationItem = [(AMSUIWebContainerViewController *)&v8 navigationItem];
  }

  v6 = navigationItem;

  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  v15 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v10 viewDidAppear:appear];
  pageRenderPresenter = [(AMSUIWebContainerViewController *)self pageRenderPresenter];
  [pageRenderPresenter viewDidAppear];

  [(AMSUIWebContainerViewController *)self _postEvent:@"DidAppear"];
  [(AMSUIWebContainerViewController *)self setDismissCalled:0];
  if (![(AMSUIWebContainerViewController *)self isAppearing]&& [(AMSUIWebContainerViewController *)self didAppearOnce]&& ([(AMSUIWebContainerViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Did re-appear from pop", buf, 0x16u);
    }

    [(AMSUIWebContainerViewController *)self didDismissController:self];
  }

  [(AMSUIWebContainerViewController *)self setDidAppearOnce:1];
  [(AMSUIWebContainerViewController *)self setIsAppearing:1];
  [(AMSUIWebContainerViewController *)self setShouldSkipInitialRefresh:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(AMSUIWebContainerViewController *)self _postEvent:@"DidDisappear"];
  v5.receiver = self;
  v5.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v5 viewDidDisappear:disappearCopy];
  [(AMSUIWebContainerViewController *)self setIsAppearing:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v4 viewDidLoad];
  pageRenderPresenter = [(AMSUIWebContainerViewController *)self pageRenderPresenter];
  [pageRenderPresenter viewDidLoad];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(AMSUIWebContainerViewController *)self _postEvent:@"SafeAreaInsetsDidChange"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v6 viewWillAppear:appear];
  pageRenderPresenter = [(AMSUIWebContainerViewController *)self pageRenderPresenter];
  [pageRenderPresenter viewWillAppear];

  self->_activePresentationType = [(AMSUIWebContainerViewController *)self _determineActivePresentationType];
  [(AMSUIWebContainerViewController *)self _refreshForInitialAppear];
  navigationBarModel = [(AMSUIWebContainerViewController *)self navigationBarModel];
  [(AMSUIWebContainerViewController *)self applyNavigationModel:navigationBarModel];

  [(AMSUIWebContainerViewController *)self _applyAppearance];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIWebContainerViewController;
  [(AMSUIWebContainerViewController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  view2 = [containedViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)applyNavigationModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_navigationBarModel, model);
    [(AMSUIWebContainerViewController *)self _setupNavBarAnimated:0];
    modelCopy = v6;
  }
}

- (void)cacheScrollViewPositionFor:(id)for
{
  forCopy = for;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = forCopy;
  }

  else
  {
    v5 = 0;
  }

  webView = [v5 webView];

  if (webView)
  {
    objc_initWeak(&location, self);
    underlyingWebView = [webView underlyingWebView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__AMSUIWebContainerViewController_cacheScrollViewPositionFor___block_invoke;
    v8[3] = &unk_1E7F25EA8;
    objc_copyWeak(&v9, &location);
    [underlyingWebView evaluateJavaScript:@"window.scrollY;" completionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __62__AMSUIWebContainerViewController_cacheScrollViewPositionFor___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    [WeakRetained setScrollPosition:{0.0, v4}];
  }
}

- (void)handleModalDismissal
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(AMSUIWebContainerViewController *)self dismissCalled])
  {
    [(AMSUIWebContainerViewController *)self setDismissCalled:1];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling modal dismissal", &v9, 0x16u);
    }

    modalPresentationDelegate = [(AMSUIWebContainerViewController *)self modalPresentationDelegate];
    [modalPresentationDelegate didDismissController:self];
  }
}

- (void)replaceContentWithViewController:(id)controller animated:(BOOL)animated pageModel:(id)model completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(AMSUIWebContainerViewController *)self setPageModel:modelCopy];
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  v14 = controllerCopy;
  if (containedViewController == v14)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_storeStrong(&self->_containedViewController, controller);
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      *buf = 138544130;
      v28 = v17;
      v29 = 2114;
      v30 = logKey;
      v31 = 2114;
      v32 = containedViewController;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Replacing fromVC with toVC (fromVC: %{public}@, toVC: %{public}@)", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke;
    v21[3] = &unk_1E7F25F20;
    objc_copyWeak(&v25, buf);
    v22 = v14;
    v23 = containedViewController;
    v24 = completionCopy;
    animatedCopy = animated;
    [(AMSUIWebContainerViewController *)self _prepareToMoveWebViewToVC:v22 completion:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained ams_setChildViewController:*(a1 + 32)];
  v3 = [WeakRetained view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [*(a1 + 32) view];
  [v13 ams_setAlpha:0.0];

  v14 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v14)
  {
    v14 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = [WeakRetained context];
    v18 = [v17 logKey];
    v19 = [*(a1 + 32) view];
    *buf = 138543874;
    v33 = v16;
    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v19;
    _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] toVC.view added (toVC.view: %{public}@)", buf, 0x20u);
  }

  [WeakRetained scrollPosition];
  if (v20 > 0.0)
  {
    v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v21 configureWithDefaultBackground];
    v22 = [WeakRetained navigationItem];
    [v22 setStandardAppearance:v21];

    v23 = [WeakRetained navigationItem];
    [v23 setCompactAppearance:v21];

    v24 = [WeakRetained navigationItem];
    [v24 setScrollEdgeAppearance:v21];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_23;
  v26[3] = &unk_1E7F25EF8;
  v25 = *(a1 + 32);
  v27 = *(a1 + 40);
  v28 = WeakRetained;
  v30 = *(a1 + 48);
  v29 = *(a1 + 32);
  v31 = *(a1 + 64);
  [WeakRetained _adjustWebViewScrollFor:v25 completion:v26];
}

void __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_23(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_2;
  aBlock[3] = &unk_1E7F25C40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18 = v2;
  v19 = v3;
  v20 = *(a1 + 56);
  v4 = _Block_copy(aBlock);
  [*(a1 + 40) scrollPosition];
  if (v5 > 0.0)
  {
    [*(a1 + 40) setLastNavigationItem:0];
    [*(a1 + 40) _setupNavBarAnimated:0];
  }

  v6 = [*(a1 + 48) contentScrollViewForEdge:1];
  v7 = [*(a1 + 40) navigationController];
  v8 = [v7 topViewController];
  [v8 setContentScrollView:v6 forEdge:1];

  if (*(a1 + 64))
  {
    v9 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_26;
    v15[3] = &unk_1E7F242D0;
    v16 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_2_27;
    v12[3] = &unk_1E7F25ED0;
    v10 = v4;
    v12[4] = *(a1 + 40);
    v13 = v10;
    v14 = *(a1 + 64);
    [v9 animateWithDuration:0 delay:v15 options:v12 animations:0.2 completion:0.0];
  }

  else
  {
    v11 = [*(a1 + 48) view];
    [v11 ams_setAlpha:1.0];

    v4[2](v4);
  }
}

uint64_t __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ams_removeFromParentViewController];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) context];
    v6 = [v5 logKey];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] fromVC removed", &v8, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_26(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __98__AMSUIWebContainerViewController_replaceContentWithViewController_animated_pageModel_completion___block_invoke_2_27(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 contentWasReplacedAnimated:v3];
}

- (void)setupToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  toolbarItems = [containedViewController toolbarItems];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    context = [(AMSUIWebContainerViewController *)self context];
    logKey = [context logKey];
    v18 = 138543874;
    v19 = v9;
    v20 = 2114;
    v21 = logKey;
    v22 = 2114;
    v23 = toolbarItems;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Setting Toolbar (items: %{public}@)", &v18, 0x20u);
  }

  [(AMSUIWebContainerViewController *)self setToolbarItems:toolbarItems animated:animatedCopy];
  if ([toolbarItems count])
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      context2 = [(AMSUIWebContainerViewController *)self context];
      logKey2 = [context2 logKey];
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = logKey2;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Showing toolbar", &v18, 0x16u);
    }

    navigationController = [(AMSUIWebContainerViewController *)self navigationController];
    [navigationController setToolbarHidden:0 animated:animatedCopy];
  }
}

- (void)updateRefreshControlForPageModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = modelCopy;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    supportsRefresh = [v4 supportsRefresh];
    context = [(AMSUIWebContainerViewController *)self context];
    webPage = [context webPage];
    webView = [webPage webView];
    v9 = webView;
    if (supportsRefresh)
    {
      [webView _setupRefreshControl];
    }

    else
    {
      [webView _tearDownRefreshControl];
    }
  }
}

- (void)updateSafeAreaEdgesForPageModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = modelCopy;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if ([v4 ignoreTopSafeArea])
    {
      v5 = 10;
    }

    else
    {
      v5 = 11;
    }

    if (![v4 ignoreBottomSafeArea])
    {
      v5 |= 4uLL;
    }

    context = [(AMSUIWebContainerViewController *)self context];
    webPage = [context webPage];
    view = [webPage view];

    if ([view edgesPropagatingSafeAreaInsetsToSubviews] != v5)
    {
      [view setEdgesPropagatingSafeAreaInsetsToSubviews:v5];
      [view setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }
  }
}

- (void)didDismissController:(id)controller
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    context = [(AMSUIWebContainerViewController *)self context];
    logKey = [context logKey];
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received container dismissal", &v16, 0x16u);
  }

  containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containedViewController2 = [(AMSUIWebContainerViewController *)self containedViewController];
    [containedViewController2 willAppearAfterDismiss];
  }

  [(AMSUIWebContainerViewController *)self setNextContainer:0];
  v13 = objc_alloc_init(AMSUIWebFlowOptions);
  pageInfo = [(AMSUIWebContainerViewController *)self pageInfo];
  [(AMSUIWebFlowOptions *)v13 setPageData:pageInfo];

  [(AMSUIWebFlowOptions *)v13 setDeferredPresentation:[(AMSUIWebContainerViewController *)self disableReappearPlaceholder]!= 0];
  [(AMSUIWebFlowOptions *)v13 setReuseExistingPage:1];
  [(AMSUIWebFlowOptions *)v13 setAnimated:1];
  v15 = [(AMSUIWebContainerViewController *)self _refreshWithOptions:v13];
}

- (void)_prepareToMoveWebViewToVC:(id)c completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  navigationController = [(AMSUIWebContainerViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  if ((isToolbarHidden & 1) == 0)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Hiding toolbar", &v14, 0x16u);
    }

    navigationController2 = [(AMSUIWebContainerViewController *)self navigationController];
    [navigationController2 setToolbarHidden:1 animated:1];

    [(AMSUIWebContainerViewController *)self setToolbarItems:MEMORY[0x1E695E0F0] animated:0];
  }

  completionCopy[2](completionCopy);
}

- (void)contentWasReplacedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebContainerViewController *)self context];
    logKey = [context logKey];
    containedViewController = [(AMSUIWebContainerViewController *)self containedViewController];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = logKey;
    v15 = 2114;
    v16 = containedViewController;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Content replaced (containedViewController: %{public}@)", &v11, 0x20u);
  }

  [(AMSUIWebContainerViewController *)self setupToolbarAnimated:animatedCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v18 = *MEMORY[0x1E69E9840];
  [(AMSUIWebContainerViewController *)self handleModalDismissal];
  pageModel = [(AMSUIWebContainerViewController *)self pageModel];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running swipe to dismiss action", &v14, 0x16u);
    }

    pageModel2 = [(AMSUIWebContainerViewController *)self pageModel];
    swipeToDismissAction = [pageModel2 swipeToDismissAction];
    runAction = [swipeToDismissAction runAction];
  }
}

- (NSDictionary)pageMetrics
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  context = [(AMSUIWebContainerViewController *)self context];
  v5 = [context URL];
  pageInfo = [(AMSUIWebContainerViewController *)self pageInfo];
  v7 = [pageInfo objectForKeyedSubscript:@"routeName"];
  v8 = [v3 initWithObjectsAndKeys:{@"pageRender", @"eventType", v5, @"pageUrl", v7, @"placement", 0}];

  return v8;
}

- (id)_actionBlockForWebButtonModel:(id)model
{
  modelCopy = model;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AMSUIWebContainerViewController__actionBlockForWebButtonModel___block_invoke;
  v8[3] = &unk_1E7F24730;
  objc_copyWeak(&v10, &location);
  v5 = modelCopy;
  v9 = v5;
  v6 = [v8 copy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __65__AMSUIWebContainerViewController__actionBlockForWebButtonModel___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) action];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [WeakRetained context];
      v9 = [v8 logKey];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Navigation bar button selected", &v15, 0x16u);
    }

    v10 = [v3 runAction];
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v5 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = [WeakRetained context];
      v14 = [v13 logKey];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Navigation bar button selected with no action to run", &v15, 0x16u);
    }
  }
}

- (void)_adjustWebViewScrollFor:(id)for completion:(id)completion
{
  completionCopy = completion;
  forCopy = for;
  context = [(AMSUIWebContainerViewController *)self context];
  webPage = [context webPage];
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [(AMSUIWebContainerViewController *)self context];
    webPage2 = [context2 webPage];
    webView = [webPage2 webView];

    [(AMSUIWebContainerViewController *)self scrollPosition];
    v15 = v14;
    v17 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__AMSUIWebContainerViewController__adjustWebViewScrollFor_completion___block_invoke;
    v19[3] = &unk_1E7F245E0;
    v20 = webView;
    v21 = completionCopy;
    v18 = webView;
    [(AMSUIWebContainerViewController *)self _scrollTo:v18 webView:v19 completion:v15, v17];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __70__AMSUIWebContainerViewController__adjustWebViewScrollFor_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingWebView];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__AMSUIWebContainerViewController__adjustWebViewScrollFor_completion___block_invoke_2;
  v3[3] = &unk_1E7F25F48;
  v4 = *(a1 + 40);
  [v2 _doAfterNextStablePresentationUpdate:v3];
}

- (void)_applyAppearance
{
  appearance = [(AMSUIWebContainerViewController *)self appearance];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  backgroundColor = [appearance backgroundColor];
  v5 = backgroundColor;
  if (backgroundColor)
  {
    v6 = backgroundColor;
  }

  else
  {
    v6 = v3;
  }

  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:v6];
}

- (id)_buttonModelForBarButtonItemModel:(id)model
{
  v23 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  buttonModel = [modelCopy buttonModel];
  v6 = buttonModel;
  if (buttonModel)
  {
    button = buttonModel;
  }

  else
  {
    activePresentationType = [(AMSUIWebContainerViewController *)self activePresentationType];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    conditionalButtonModels = [modelCopy conditionalButtonModels];
    v10 = [conditionalButtonModels countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(conditionalButtonModels);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 hideOnPush])
          {
            v15 = activePresentationType == 2;
          }

          else
          {
            v15 = 0;
          }

          if (!v15 && (![v14 hideOnModal] || activePresentationType != 1))
          {
            button = [v14 button];

            goto LABEL_20;
          }
        }

        v11 = [conditionalButtonModels countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    button = 0;
  }

LABEL_20:

  return button;
}

- (id)_createBarButtonItemWithModel:(id)model navigationBarModel:(id)barModel
{
  modelCopy = model;
  barModelCopy = barModel;
  v8 = [(AMSUIWebContainerViewController *)self _buttonModelForBarButtonItemModel:modelCopy];
  v9 = MEMORY[0x1E69DC708];
  if (v8)
  {
    appViewModel = [(AMSUIWebContainerViewController *)self _actionBlockForWebButtonModel:v8];
    [v9 barButtonItemWithWebButtonModel:v8 navigationBarModel:barModelCopy actionBlock:appViewModel];
  }

  else
  {
    appViewModel = [modelCopy appViewModel];
    [v9 barButtonItemWithWebAppViewModel:appViewModel];
  }
  v11 = ;

  return v11;
}

- (unint64_t)_determineActivePresentationType
{
  ams_navigationItemViewController = [(UIViewController *)self ams_navigationItemViewController];
  ams_navigationController = [(UIViewController *)self ams_navigationController];
  viewControllers = [ams_navigationController viewControllers];

  if ([viewControllers count])
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = [viewControllers objectAtIndexedSubscript:v6];

      if (v6)
      {
        if (v8 == ams_navigationItemViewController)
        {
          break;
        }
      }

      if (++v6 >= [viewControllers count])
      {
        goto LABEL_9;
      }
    }

    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (void)_handlePushDismissal
{
  pushPresentationDelegate = [(AMSUIWebContainerViewController *)self pushPresentationDelegate];
  [pushPresentationDelegate didDismissController:self];
}

- (id)_makeCustomNavigationBarAppearanceWithModel:(id)model
{
  modelCopy = model;
  v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  backgroundStyle = [modelCopy backgroundStyle];
  if (backgroundStyle == 2)
  {
    [v4 configureWithTransparentBackground];
  }

  else if (backgroundStyle == 1)
  {
    [v4 configureWithOpaqueBackground];
  }

  else
  {
    [v4 configureWithDefaultBackground];
  }

  v6 = MEMORY[0x1E69DC888];
  backgroundColor = [modelCopy backgroundColor];
  v8 = [v6 ams_colorFromHexString:backgroundColor];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (void)_postEvent:(id)event
{
  v16[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  context = [(AMSUIWebContainerViewController *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  if (currentContainer == self)
  {
    v15 = @"pageData";
    pageInfo = [(AMSUIWebContainerViewController *)self pageInfo];
    v9 = pageInfo;
    v10 = MEMORY[0x1E695E0F8];
    if (pageInfo)
    {
      v10 = pageInfo;
    }

    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    context2 = [(AMSUIWebContainerViewController *)self context];
    dataProvider = [context2 dataProvider];
    v14 = [dataProvider postEvent:eventCopy options:v11];
  }
}

- (void)_refreshForInitialAppear
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(AMSUIWebContainerViewController *)self didAppearOnce]&& ![(AMSUIWebContainerViewController *)self shouldSkipInitialRefresh])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Refreshing for initial appearance", &v11, 0x16u);
    }

    v8 = objc_alloc_init(AMSUIWebFlowOptions);
    pageInfo = [(AMSUIWebContainerViewController *)self pageInfo];
    [(AMSUIWebFlowOptions *)v8 setPageData:pageInfo];

    [(AMSUIWebFlowOptions *)v8 setAnimated:1];
    v10 = [(AMSUIWebContainerViewController *)self _refreshWithOptions:v8];
  }
}

- (id)_refreshWithOptions:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  activeRefresh = [(AMSUIWebContainerViewController *)self activeRefresh];

  if (activeRefresh)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      context = [(AMSUIWebContainerViewController *)self context];
      logKey = [context logKey];
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deduping refresh call", buf, 0x16u);
    }

    activeRefresh2 = [(AMSUIWebContainerViewController *)self activeRefresh];
  }

  else
  {
    context2 = [(AMSUIWebContainerViewController *)self context];
    flowController = [context2 flowController];
    activeRefresh2 = [flowController refreshPageForContainer:self options:optionsCopy];

    objc_initWeak(buf, self);
    [(AMSUIWebContainerViewController *)self setActiveRefresh:activeRefresh2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__AMSUIWebContainerViewController__refreshWithOptions___block_invoke;
    v15[3] = &unk_1E7F255F0;
    objc_copyWeak(&v16, buf);
    [activeRefresh2 addFinishBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return activeRefresh2;
}

void __55__AMSUIWebContainerViewController__refreshWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActiveRefresh:0];
}

- (void)_scrollTo:(CGPoint)to webView:(id)view completion:(id)completion
{
  y = to.y;
  x = to.x;
  v18[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  underlyingWebView = [view underlyingWebView];
  v17[0] = @"scrollX";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v17[1] = @"scrollY";
  v18[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  defaultClientWorld = [MEMORY[0x1E6985318] defaultClientWorld];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__AMSUIWebContainerViewController__scrollTo_webView_completion___block_invoke;
  v15[3] = &unk_1E7F25F70;
  v16 = completionCopy;
  v14 = completionCopy;
  [underlyingWebView callAsyncJavaScript:@"return new Promise( (resolve arguments:reject) => {    window.requestAnimationFrame(() => {        window.scrollTo(scrollX inFrame:scrollY);        window.requestAnimationFrame(() => {            setTimeout(() => {                resolve();            } inContentWorld:0);        });    });});" completionHandler:{v12, 0, defaultClientWorld, v15}];
}

- (void)_setupNavBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationBarModel = [(AMSUIWebContainerViewController *)self navigationBarModel];
  if (navigationBarModel)
  {
    v7 = navigationBarModel;
    ams_navigationController = [(UIViewController *)self ams_navigationController];
    if (ams_navigationController)
    {
      [(AMSUIWebContainerViewController *)self applyNavigationBarModel:v7 toNavigationController:ams_navigationController animated:animatedCopy];
    }

    navigationBarModel = v7;
  }
}

- (void)applyNavigationBarModel:(id)model toNavigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  modelCopy = model;
  navigationItem = [(AMSUIWebContainerViewController *)self navigationItem];
  [navigationItem setHidesBackButton:{objc_msgSend(modelCopy, "hidesBackButton")}];
  title = [modelCopy title];
  [navigationItem setTitle:title];

  leftBarButtonItemModel = [modelCopy leftBarButtonItemModel];
  v10 = [(AMSUIWebContainerViewController *)self _createBarButtonItemWithModel:leftBarButtonItemModel navigationBarModel:modelCopy];

  [v10 setAccessibilityIdentifier:@"left_bar_button_item"];
  [navigationItem setLeftBarButtonItem:v10];
  rightBarButtonItemModel = [modelCopy rightBarButtonItemModel];
  v12 = [(AMSUIWebContainerViewController *)self _createBarButtonItemWithModel:rightBarButtonItemModel navigationBarModel:modelCopy];

  [v12 setAccessibilityIdentifier:@"right_bar_button_item"];
  [navigationItem setRightBarButtonItem:v12];
  LODWORD(rightBarButtonItemModel) = [modelCopy hidesBackButton];
  ams_navigationController = [(UIViewController *)self ams_navigationController];
  interactivePopGestureRecognizer = [ams_navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:rightBarButtonItemModel ^ 1];

  backButtonTitle = [modelCopy backButtonTitle];

  if (backButtonTitle)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DC708]);
    backButtonTitle2 = [modelCopy backButtonTitle];
    [v16 setTitle:backButtonTitle2];

    [navigationItem setBackBarButtonItem:v16];
  }

  else
  {
    [navigationItem setBackBarButtonItem:0];
  }

  [navigationItem _setManualScrollEdgeAppearanceEnabled:0];
  ams_navigationController2 = [(UIViewController *)self ams_navigationController];
  [ams_navigationController2 setNavigationBarHidden:objc_msgSend(modelCopy animated:{"style") == 1, animatedCopy}];

  if ([modelCopy style] == 3)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  [navigationItem setLargeTitleDisplayMode:v19];
  if ([modelCopy style] == 3)
  {
    ams_navigationController3 = [(UIViewController *)self ams_navigationController];
    viewControllers = [ams_navigationController3 viewControllers];
    firstObject = [viewControllers firstObject];

    if (firstObject == self)
    {
      ams_navigationController4 = [(UIViewController *)self ams_navigationController];
      navigationBar = [ams_navigationController4 navigationBar];
      [navigationBar setPrefersLargeTitles:1];
    }
  }

  lastNavigationStyle = [(AMSUIWebContainerViewController *)self lastNavigationStyle];
  if (lastNavigationStyle != [modelCopy style] || (-[AMSUIWebContainerViewController lastNavigationItem](self, "lastNavigationItem"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26 != navigationItem))
  {
    -[AMSUIWebContainerViewController setLastNavigationStyle:](self, "setLastNavigationStyle:", [modelCopy style]);
    [(AMSUIWebContainerViewController *)self setLastNavigationItem:navigationItem];
    style = [modelCopy style];
    if (style <= 4)
    {
      if (style < 2)
      {
        goto LABEL_26;
      }

      if (style == 2 || style == 3)
      {
        v28 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v28 configureWithDefaultBackground];
        [navigationItem setStandardAppearance:v28];
        [navigationItem setCompactAppearance:v28];
        [navigationItem setScrollEdgeAppearance:v28];
LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_22;
    }

    switch(style)
    {
      case 5:
        v28 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v28 configureWithTransparentBackground];
        break;
      case 6:
        v28 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v28 configureWithTransparentBackground];
        systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
        v30 = [systemBackgroundColor colorWithAlphaComponent:0.96];
        [v28 setBackgroundColor:v30];

        break;
      case 8:
        v28 = [(AMSUIWebContainerViewController *)self _makeCustomNavigationBarAppearanceWithModel:modelCopy];
        [navigationItem setCompactAppearance:v28];
        [navigationItem setScrollEdgeAppearance:v28];
        [navigationItem setStandardAppearance:v28];
        goto LABEL_25;
      default:
LABEL_22:
        [navigationItem setScrollEdgeAppearance:0];
        [navigationItem setStandardAppearance:0];
        [navigationItem setCompactAppearance:0];
        goto LABEL_26;
    }

    [navigationItem setScrollEdgeAppearance:v28];
    [navigationItem setStandardAppearance:v28];
    [navigationItem setCompactAppearance:v28];
    goto LABEL_25;
  }

LABEL_26:
}

- (AMSUIWebPresentationDelegate)modalPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPresentationDelegate);

  return WeakRetained;
}

- (AMSUIWebContainerViewController)nextContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_nextContainer);

  return WeakRetained;
}

- (AMSUIWebPresentationDelegate)pushPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pushPresentationDelegate);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (UINavigationItem)lastNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_lastNavigationItem);

  return WeakRetained;
}

- (CGPoint)scrollPosition
{
  x = self->_scrollPosition.x;
  y = self->_scrollPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end