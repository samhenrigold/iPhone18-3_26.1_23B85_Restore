@interface NSSNewsRemoteViewController
- (void)dismissAnimated:(BOOL)animated;
@end

@implementation NSSNewsRemoteViewController

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(NSSNewsRemoteViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(NSSNewsRemoteViewController *)self navigationController];
    v6 = [navigationController2 popViewControllerAnimated:animatedCopy];
  }

  else
  {
    navigationController2 = [(NSSNewsRemoteViewController *)self presentingViewController];
    [navigationController2 dismissViewControllerAnimated:animatedCopy completion:0];
  }
}

@end