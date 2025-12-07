@interface ServiceSKUIDonationViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation ServiceSKUIDonationViewController

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedParent = [(ServiceSKUIDonationViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v6.receiver = self;
  v6.super_class = ServiceSKUIDonationViewController;
  [(ServiceSKUIDonationViewController *)&v6 dismissAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  embeddedParent = [(ServiceSKUIDonationViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v8.receiver = self;
  v8.super_class = ServiceSKUIDonationViewController;
  [(ServiceSKUIDonationViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end