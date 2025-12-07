@interface ServiceSKUIRedeemViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation ServiceSKUIRedeemViewController

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedParent = [(ServiceSKUIRedeemViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v6.receiver = self;
  v6.super_class = ServiceSKUIRedeemViewController;
  [(ServiceSKUIRedeemViewController *)&v6 dismissAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  embeddedParent = [(ServiceSKUIRedeemViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v8.receiver = self;
  v8.super_class = ServiceSKUIRedeemViewController;
  [(ServiceSKUIRedeemViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end