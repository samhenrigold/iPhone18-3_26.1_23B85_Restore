@interface ServiceSKUIGiftViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation ServiceSKUIGiftViewController

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedParent = [(ServiceSKUIGiftViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v6.receiver = self;
  v6.super_class = ServiceSKUIGiftViewController;
  [(ServiceSKUIGiftViewController *)&v6 dismissAnimated:animatedCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  embeddedParent = [(ServiceSKUIGiftViewController *)self embeddedParent];
  [embeddedParent dismissHostViewController];

  v8.receiver = self;
  v8.super_class = ServiceSKUIGiftViewController;
  [(ServiceSKUIGiftViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end