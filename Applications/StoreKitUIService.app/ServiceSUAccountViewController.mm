@interface ServiceSUAccountViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ServiceSUAccountViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ServiceSUAccountViewController;
  [(ServiceSUAccountViewController *)&v7 viewDidDisappear:disappear];
  embeddedParent = [(ServiceSUAccountViewController *)self embeddedParent];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    embeddedParent2 = [(ServiceSUAccountViewController *)self embeddedParent];
    [embeddedParent2 attemptDismissHostViewController];
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedParent = [(ServiceSUAccountViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v6.receiver = self;
  v6.super_class = ServiceSUAccountViewController;
  [(ServiceSUAccountViewController *)&v6 dismissAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  embeddedParent = [(ServiceSUAccountViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v8.receiver = self;
  v8.super_class = ServiceSUAccountViewController;
  [(ServiceSUAccountViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (!success)
  {
    [(ServiceSUAccountViewController *)self dismissAnimated:1];
  }
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end