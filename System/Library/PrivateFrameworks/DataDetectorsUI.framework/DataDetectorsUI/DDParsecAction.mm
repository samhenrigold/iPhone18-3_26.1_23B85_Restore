@interface DDParsecAction
- (id)createViewController;
- (void)interactionDidFinishAndRequiresDismissal:(BOOL)dismissal;
@end

@implementation DDParsecAction

- (id)createViewController
{
  if (self->super.super._result)
  {
    v3 = [[DDParsecCollectionViewController alloc] initWithResult:self->super.super._result context:self->super.super._context];
    parsecViewController = self->_parsecViewController;
    self->_parsecViewController = v3;

    [(DDParsecCollectionViewController *)self->_parsecViewController setParsecDelegate:self];
    [(DDParsecCollectionViewController *)self->_parsecViewController setPreviewMode:self->_previewMode];
    v5 = self->_parsecViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)interactionDidFinishAndRequiresDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  delegate = [(DDAction *)self delegate];
  [delegate actionDidFinish:self shouldDismiss:dismissalCopy];
}

@end