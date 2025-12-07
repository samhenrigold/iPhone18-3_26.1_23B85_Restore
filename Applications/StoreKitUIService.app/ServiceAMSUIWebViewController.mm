@interface ServiceAMSUIWebViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ServiceAMSUIWebViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ServiceAMSUIWebViewController;
  [(ServiceAMSUIWebViewController *)&v7 viewDidDisappear:disappear];
  embeddedParent = [(ServiceAMSUIWebViewController *)self embeddedParent];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    embeddedParent2 = [(ServiceAMSUIWebViewController *)self embeddedParent];
    [embeddedParent2 attemptDismissHostViewController];
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedParent = [(ServiceAMSUIWebViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v6.receiver = self;
  v6.super_class = ServiceAMSUIWebViewController;
  [(ServiceAMSUIWebViewController *)&v6 dismissAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  embeddedParent = [(ServiceAMSUIWebViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v8.receiver = self;
  v8.super_class = ServiceAMSUIWebViewController;
  [(ServiceAMSUIWebViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end