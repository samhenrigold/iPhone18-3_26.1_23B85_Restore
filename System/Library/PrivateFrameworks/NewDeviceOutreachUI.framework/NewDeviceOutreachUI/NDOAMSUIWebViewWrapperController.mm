@interface NDOAMSUIWebViewWrapperController
- (NDOAMSUIWebViewWrapperController)initWithViewController:(id)controller;
- (void)dealloc;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation NDOAMSUIWebViewWrapperController

- (NDOAMSUIWebViewWrapperController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = NDOAMSUIWebViewWrapperController;
  v6 = [(NDOAMSUIWebViewWrapperController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (void)dealloc
{
  dismissBlock = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];

  if (dismissBlock)
  {
    v4 = _NDOLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(NDOAMSUIWebViewWrapperController *)v4 dealloc:v5];
    }

    dismissBlock2 = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];
    dismissBlock2[2]();

    [(NDOAMSUIWebViewWrapperController *)self setDismissBlock:0];
  }

  v13.receiver = self;
  v13.super_class = NDOAMSUIWebViewWrapperController;
  [(NDOAMSUIWebViewWrapperController *)&v13 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = NDOAMSUIWebViewWrapperController;
  [(AMSUICommonViewController *)&v5 loadView];
  viewController = [(NDOAMSUIWebViewWrapperController *)self viewController];
  v4.receiver = self;
  v4.super_class = NDOAMSUIWebViewWrapperController;
  [(AMSUICommonViewController *)&v4 setChildViewController:viewController];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NDOAMSUIWebViewWrapperController;
  [(NDOAMSUIWebViewWrapperController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  viewController = [(NDOAMSUIWebViewWrapperController *)self viewController];
  view2 = [viewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NDOAMSUIWebViewWrapperController viewDidDisappear:?];
  }

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [NDOAMSUIWebViewWrapperController viewDidDisappear:?];
  }

  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [NDOAMSUIWebViewWrapperController viewDidDisappear:?];
  }

  if (([(NDOAMSUIWebViewWrapperController *)self isBeingDismissed]& 1) == 0)
  {
    navigationController = [(NDOAMSUIWebViewWrapperController *)self navigationController];
    if ([navigationController isBeingDismissed])
    {
    }

    else
    {
      isMovingFromParentViewController = [(NDOAMSUIWebViewWrapperController *)self isMovingFromParentViewController];

      if (!isMovingFromParentViewController)
      {
        goto LABEL_15;
      }
    }
  }

  dismissBlock = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];

  if (dismissBlock)
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NDOAMSUIWebViewWrapperController *)v11 viewDidDisappear:v12, v13, v14, v15, v16, v17, v18];
    }

    dismissBlock2 = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];
    dismissBlock2[2]();

    [(NDOAMSUIWebViewWrapperController *)self setDismissBlock:0];
  }

LABEL_15:
  v20.receiver = self;
  v20.super_class = NDOAMSUIWebViewWrapperController;
  [(NDOAMSUIWebViewWrapperController *)&v20 viewDidDisappear:disappearCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissBlock = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];

  if (dismissBlock)
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(NDOAMSUIWebViewWrapperController *)v5 presentationControllerDidDismiss:v6, v7, v8, v9, v10, v11, v12];
    }

    dismissBlock2 = [(NDOAMSUIWebViewWrapperController *)self dismissBlock];
    dismissBlock2[2]();

    [(NDOAMSUIWebViewWrapperController *)self setDismissBlock:0];
  }
}

- (void)viewDidDisappear:(void *)a1 .cold.1(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 isBeingDismissed];
  OUTLINED_FUNCTION_0_1(&dword_25BD8D000, v1, v2, "dismissal isBeingDismissed %d", v3, v4, v5, v6, v7);
}

- (void)viewDidDisappear:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 navigationController];
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = [v1 isBeingDismissed];
  OUTLINED_FUNCTION_0_1(&dword_25BD8D000, v2, v3, "dismissal navigationController isBeingDismissed %d", v4, v5, v6, v7, v8);
}

- (void)viewDidDisappear:(void *)a1 .cold.3(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 isMovingFromParentViewController];
  OUTLINED_FUNCTION_0_1(&dword_25BD8D000, v1, v2, "dismissal isMovingFromParentViewController %d", v3, v4, v5, v6, v7);
}

@end