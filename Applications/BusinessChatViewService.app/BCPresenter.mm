@interface BCPresenter
- (UIViewController)presentingViewController;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation BCPresenter

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  presentingViewController = [(BCPresenter *)self presentingViewController];
  [presentingViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end