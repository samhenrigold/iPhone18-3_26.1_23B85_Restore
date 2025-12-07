@interface WrappedAMSUIWebViewController
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation WrappedAMSUIWebViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ((-[WrappedAMSUIWebViewController isBeingDismissed](self, "isBeingDismissed") & 1) != 0 || (-[WrappedAMSUIWebViewController isMovingFromParentViewController](self, "isMovingFromParentViewController") & 1) != 0 || (-[WrappedAMSUIWebViewController navigationController](self, "navigationController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isBeingDismissed], v5, v6))
  {
    dismissBlock = [(WrappedAMSUIWebViewController *)self dismissBlock];

    if (dismissBlock)
    {
      dismissBlock2 = [(WrappedAMSUIWebViewController *)self dismissBlock];
      dismissBlock2[2]();
    }
  }

  v9.receiver = self;
  v9.super_class = WrappedAMSUIWebViewController;
  [(WrappedAMSUIWebViewController *)&v9 viewDidDisappear:disappearCopy];
}

@end