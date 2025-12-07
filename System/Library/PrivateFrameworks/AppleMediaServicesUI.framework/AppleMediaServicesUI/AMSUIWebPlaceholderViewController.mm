@interface AMSUIWebPlaceholderViewController
- (AMSUIWebPlaceholderViewController)initWithContext:(id)context;
- (AMSUIWebPlaceholderViewController)initWithModel:(id)model context:(id)context appearance:(id)appearance;
- (AMSUIWebPlaceholderViewController)initWithSnapshot:(id)snapshot context:(id)context appearance:(id)appearance;
- (id)removeSnapshot;
- (void)_animateTransition;
- (void)_applyAppearance;
- (void)_replacePrimaryViewWithView:(id)view animated:(BOOL)animated;
- (void)_replacePrimaryViewWithViewController:(id)controller animated:(BOOL)animated;
- (void)_startReappearTransitionTimerAnimated:(BOOL)animated;
- (void)_transitionToLoadingAnimated:(BOOL)animated;
- (void)_transitionToSnapshot;
- (void)awaitSnapshotWithCompletion:(id)completion;
- (void)dealloc;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebPlaceholderViewController

- (AMSUIWebPlaceholderViewController)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = AMSUIWebPlaceholderViewController;
  v6 = [(AMSUICommonViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    promiseWithSuccess = [MEMORY[0x1E698C7F0] promiseWithSuccess];
    snapshotPromise = v7->_snapshotPromise;
    v7->_snapshotPromise = promiseWithSuccess;
  }

  return v7;
}

- (AMSUIWebPlaceholderViewController)initWithModel:(id)model context:(id)context appearance:(id)appearance
{
  modelCopy = model;
  appearanceCopy = appearance;
  v11 = [(AMSUIWebPlaceholderViewController *)self initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appearance, appearance);
    objc_storeStrong(&v12->_model, model);
  }

  return v12;
}

- (AMSUIWebPlaceholderViewController)initWithSnapshot:(id)snapshot context:(id)context appearance:(id)appearance
{
  snapshotCopy = snapshot;
  contextCopy = context;
  appearanceCopy = appearance;
  v11 = [(AMSUIWebPlaceholderViewController *)self initWithContext:contextCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appearance, appearance);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      snapshotPromise = v12->_snapshotPromise;
      v12->_snapshotPromise = v13;

      objc_initWeak(&location, v12);
      v15 = [AMSUIWebSnapshotView alloc];
      view = [snapshotCopy view];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73__AMSUIWebPlaceholderViewController_initWithSnapshot_context_appearance___block_invoke;
      v20[3] = &unk_1E7F24968;
      objc_copyWeak(&v21, &location);
      v17 = [(AMSUIWebSnapshotView *)v15 initWithView:view completion:v20];
      snapshotView = v12->_snapshotView;
      v12->_snapshotView = v17;

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v12;
}

void __73__AMSUIWebPlaceholderViewController_initWithSnapshot_context_appearance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained snapshotPromise];
  [v1 finishWithSuccess];
}

- (void)awaitSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  snapshotPromise = [(AMSUIWebPlaceholderViewController *)self snapshotPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AMSUIWebPlaceholderViewController_awaitSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F26A48;
  v8 = completionCopy;
  v6 = completionCopy;
  [snapshotPromise addFinishBlock:v7];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v4 dealloc];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUICommonViewController *)&v14 loadView];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:v3];

  v5 = objc_opt_class();
  model = [(AMSUIWebPlaceholderViewController *)self model];
  message = [model message];
  v8 = [v5 placeholderStyleLoadingControllerWithMessage:message];
  [(AMSUIWebPlaceholderViewController *)self setLoadingController:v8];

  loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
  view2 = [loadingController view];
  [view2 ams_setBackgroundColor:v3];

  model2 = [(AMSUIWebPlaceholderViewController *)self model];
  LODWORD(view2) = [model2 disableDelay];

  if (view2)
  {
    [(AMSUIWebPlaceholderViewController *)self _transitionToLoadingAnimated:0];
  }

  else
  {
    [(AMSUIWebPlaceholderViewController *)self _transitionToSnapshot];
  }

  snapshotID = [(AMSUIWebPlaceholderViewController *)self snapshotID];

  if (!snapshotID)
  {
    v13 = objc_opt_new();
    [(AMSUIWebPlaceholderViewController *)self setSnapshotID:v13];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v16 viewDidDisappear:disappear];
  [(AMSUIWebPlaceholderViewController *)self setIsVisible:0];
  loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
  [loadingController removeMessage];

  context = [(AMSUIWebPlaceholderViewController *)self context];
  reducedMemoryMode = [context reducedMemoryMode];

  if (reducedMemoryMode)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      context2 = [(AMSUIWebPlaceholderViewController *)self context];
      logKey = [context2 logKey];
      *buf = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Reduce memory mode enabled, cleaning up snapshot", buf, 0x16u);
    }

    removeSnapshot = [(AMSUIWebPlaceholderViewController *)self removeSnapshot];
    if (removeSnapshot)
    {
      context3 = [(AMSUIWebPlaceholderViewController *)self context];
      snapshotCache = [context3 snapshotCache];
      snapshotID = [(AMSUIWebPlaceholderViewController *)self snapshotID];
      [snapshotCache setObject:removeSnapshot forKey:snapshotID];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v15 viewWillAppear:appear];
  [(AMSUIWebPlaceholderViewController *)self _applyAppearance];
  context = [(AMSUIWebPlaceholderViewController *)self context];
  reducedMemoryMode = [context reducedMemoryMode];

  if (reducedMemoryMode)
  {
    context2 = [(AMSUIWebPlaceholderViewController *)self context];
    snapshotCache = [context2 snapshotCache];
    snapshotID = [(AMSUIWebPlaceholderViewController *)self snapshotID];
    v9 = [snapshotCache objectForKey:snapshotID];

    if (v9)
    {
      snapshotView = [(AMSUIWebPlaceholderViewController *)self snapshotView];
      [snapshotView updateSnapshot:v9];
    }
  }

  snapshotView2 = [(AMSUIWebPlaceholderViewController *)self snapshotView];
  if (snapshotView2)
  {
    visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];
    snapshotView3 = [(AMSUIWebPlaceholderViewController *)self snapshotView];
    v14 = visibleView == snapshotView3;
  }

  else
  {
    v14 = 0;
  }

  if (![(AMSUIWebPlaceholderViewController *)self hasAppeared]&& !v14)
  {
    [(AMSUIWebPlaceholderViewController *)self _startReappearTransitionTimerAnimated:[(AMSUIWebPlaceholderViewController *)self animateFadeIn]];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v4 viewDidAppear:appear];
  [(AMSUIWebPlaceholderViewController *)self setIsVisible:1];
  [(AMSUIWebPlaceholderViewController *)self setHasAppeared:1];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v13 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];
  [visibleView setFrame:{v5, v7, v9, v11}];
}

- (id)removeSnapshot
{
  snapshotView = [(AMSUIWebPlaceholderViewController *)self snapshotView];
  removeSnapshot = [snapshotView removeSnapshot];

  return removeSnapshot;
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v21 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  appearanceCopy = appearance;
  v8 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    objc_storeStrong(&self->_appearance, appearance);
    [(AMSUIWebPlaceholderViewController *)self _applyAppearance];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      context = [(AMSUIWebPlaceholderViewController *)self context];
      logKey = [context logKey];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = logKey;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid loading page model: %{public}@", &v15, 0x20u);
    }
  }
}

- (void)_applyAppearance
{
  appearance = [(AMSUIWebPlaceholderViewController *)self appearance];
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

  backgroundColor2 = [appearance backgroundColor];
  v9 = backgroundColor2;
  if (backgroundColor2)
  {
    v10 = backgroundColor2;
  }

  else
  {
    v10 = v3;
  }

  loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
  view2 = [loadingController view];
  [view2 ams_setBackgroundColor:v10];
}

- (void)_startReappearTransitionTimerAnimated:(BOOL)animated
{
  visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];
  loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
  view = [loadingController view];

  if (visibleView != view)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__AMSUIWebPlaceholderViewController__startReappearTransitionTimerAnimated___block_invoke;
    v14[3] = &unk_1E7F26A70;
    objc_copyWeak(&v15, &location);
    animatedCopy = animated;
    v9 = v14;
    v10 = AMSLogKey();
    v11 = dispatch_time(0, 1500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAfter_block_invoke_1;
    block[3] = &unk_1E7F245E0;
    v19 = v10;
    v20 = v9;
    v12 = v10;
    v13 = MEMORY[0x1E69E96A0];
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __75__AMSUIWebPlaceholderViewController__startReappearTransitionTimerAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionToLoadingAnimated:*(a1 + 40)];
  [WeakRetained setSnapshotView:0];
}

- (void)_replacePrimaryViewWithView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];

  v7 = viewCopy;
  if (visibleView != viewCopy)
  {
    visibleView2 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
    view = [loadingController view];

    if (visibleView2 == view)
    {
      loadingController2 = [(AMSUIWebPlaceholderViewController *)self loadingController];
      [(AMSUICommonViewController *)self unsetChildViewController:loadingController2];
    }

    visibleView3 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    [visibleView3 removeFromSuperview];

    view2 = [(AMSUICommonViewController *)self view];
    [view2 bounds];
    [viewCopy setFrame:?];

    view3 = [(AMSUICommonViewController *)self view];
    [view3 addSubview:viewCopy];

    [(AMSUIWebPlaceholderViewController *)self setVisibleView:viewCopy];
    v7 = viewCopy;
    if (animatedCopy)
    {
      [(AMSUIWebPlaceholderViewController *)self _animateTransition];
      v7 = viewCopy;
    }
  }
}

- (void)_replacePrimaryViewWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];
  view = [controllerCopy view];

  if (visibleView != view)
  {
    visibleView2 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    [visibleView2 removeFromSuperview];

    [(AMSUICommonViewController *)self setChildViewController:controllerCopy];
    view2 = [controllerCopy view];
    [(AMSUIWebPlaceholderViewController *)self setVisibleView:view2];

    if (animatedCopy)
    {
      [(AMSUIWebPlaceholderViewController *)self _animateTransition];
    }
  }
}

- (void)_animateTransition
{
  visibleView = [(AMSUIWebPlaceholderViewController *)self visibleView];
  [visibleView setAlpha:0.0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AMSUIWebPlaceholderViewController__animateTransition__block_invoke;
  v4[3] = &unk_1E7F242D0;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:0 animations:0.5 completion:0.0];
}

void __55__AMSUIWebPlaceholderViewController__animateTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) visibleView];
  [v1 setAlpha:1.0];
}

- (void)_transitionToLoadingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  loadingController = [(AMSUIWebPlaceholderViewController *)self loadingController];
  [(AMSUIWebPlaceholderViewController *)self _replacePrimaryViewWithViewController:loadingController animated:animatedCopy];
}

- (void)_transitionToSnapshot
{
  snapshotView = [(AMSUIWebPlaceholderViewController *)self snapshotView];

  if (snapshotView)
  {
    snapshotView2 = [(AMSUIWebPlaceholderViewController *)self snapshotView];
    [(AMSUIWebPlaceholderViewController *)self _replacePrimaryViewWithView:snapshotView2 animated:0];
  }
}

@end