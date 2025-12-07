@interface AMSUIEngagementWrapperViewController
- (AMSUIEngagementWrapperViewController)initWithViewController:(id)controller;
- (BOOL)isInViewServiceProcess;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)dealloc;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)updateContentOverlayInsetsOnTraitCollectionChange;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIEngagementWrapperViewController

- (AMSUIEngagementWrapperViewController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AMSUIEngagementWrapperViewController;
  v6 = [(AMSUIEngagementWrapperViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
    [(AMSUIEngagementWrapperViewController *)v7 _setup];
  }

  return v7;
}

- (void)dealloc
{
  dismissBlock = [(AMSUIEngagementWrapperViewController *)self dismissBlock];

  if (dismissBlock)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "dismissing via dealloc", buf, 2u);
    }

    dismissBlock2 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];
    dismissBlock2[2]();

    [(AMSUIEngagementWrapperViewController *)self setDismissBlock:0];
  }

  v7.receiver = self;
  v7.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v7 dealloc];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (-[AMSUIEngagementWrapperViewController isInViewServiceProcess](self, "isInViewServiceProcess") && (-[AMSUIEngagementWrapperViewController traitCollection](self, "traitCollection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 verticalSizeClass], v8, v9 == 1))
  {
    if (left >= right)
    {
      v10 = left;
    }

    else
    {
      v10 = right;
    }

    [(AMSUIEngagementWrapperViewController *)&v12 _setContentOverlayInsets:0.0, v10, bottom, v10, v11.receiver, v11.super_class, self, AMSUIEngagementWrapperViewController];
  }

  else
  {
    [(AMSUIEngagementWrapperViewController *)&v11 _setContentOverlayInsets:top, left, bottom, right, self, AMSUIEngagementWrapperViewController, v12.receiver, v12.super_class];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  viewController = [(AMSUIEngagementWrapperViewController *)self viewController];
  v4.receiver = self;
  v4.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUICommonViewController *)&v4 setChildViewController:viewController];

  [(AMSUIEngagementWrapperViewController *)self updateContentOverlayInsetsOnTraitCollectionChange];
}

- (void)updateContentOverlayInsetsOnTraitCollectionChange
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(AMSUIEngagementWrapperViewController *)self isInViewServiceProcess])
  {
    view = [(AMSUICommonViewController *)self view];
    v7[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__AMSUIEngagementWrapperViewController_updateContentOverlayInsetsOnTraitCollectionChange__block_invoke;
    v6[3] = &unk_1E7F24D50;
    v6[4] = self;
    v5 = [view registerForTraitChanges:v4 withHandler:v6];
  }
}

uint64_t __89__AMSUIEngagementWrapperViewController_updateContentOverlayInsetsOnTraitCollectionChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _contentOverlayInsets];

  return [v1 _setContentOverlayInsets:?];
}

- (BOOL)isInViewServiceProcess
{
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  executableName = [currentProcess executableName];
  v4 = [executableName isEqual:@"AMSEngagementViewService"];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  viewController = [(AMSUIEngagementWrapperViewController *)self viewController];
  view2 = [viewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v23 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    isBeingDismissed = [(AMSUIEngagementWrapperViewController *)self isBeingDismissed];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "dismissal isBeingDismissed %d", buf, 8u);
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    navigationController = [(AMSUIEngagementWrapperViewController *)self navigationController];
    isBeingDismissed2 = [navigationController isBeingDismissed];
    *buf = 67109120;
    isBeingDismissed = isBeingDismissed2;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "dismissal navigationController isBeingDismissed %d", buf, 8u);
  }

  mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968]3)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    isMovingFromParentViewController = [(AMSUIEngagementWrapperViewController *)self isMovingFromParentViewController];
    *buf = 67109120;
    isBeingDismissed = isMovingFromParentViewController;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEBUG, "dismissal isMovingFromParentViewController %d", buf, 8u);
  }

  if (([(AMSUIEngagementWrapperViewController *)self isBeingDismissed]& 1) == 0)
  {
    navigationController2 = [(AMSUIEngagementWrapperViewController *)self navigationController];
    if ([navigationController2 isBeingDismissed])
    {
    }

    else
    {
      isMovingFromParentViewController2 = [(AMSUIEngagementWrapperViewController *)self isMovingFromParentViewController];

      if (!isMovingFromParentViewController2)
      {
        goto LABEL_23;
      }
    }
  }

  dismissBlock = [(AMSUIEngagementWrapperViewController *)self dismissBlock];

  if (dismissBlock)
  {
    mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]4)
    {
      mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_DEBUG, "dismissing from view did disappear", buf, 2u);
    }

    dismissBlock2 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];
    dismissBlock2[2]();

    [(AMSUIEngagementWrapperViewController *)self setDismissBlock:0];
  }

LABEL_23:
  v20.receiver = self;
  v20.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v20 viewDidDisappear:disappearCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissBlock = [(AMSUIEngagementWrapperViewController *)self dismissBlock];

  if (dismissBlock)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "dismissing from presentation controller did dismiss.", v8, 2u);
    }

    dismissBlock2 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];
    dismissBlock2[2]();

    [(AMSUIEngagementWrapperViewController *)self setDismissBlock:0];
  }
}

@end