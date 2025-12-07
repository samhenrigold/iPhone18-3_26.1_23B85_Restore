@interface SystemCloseButton.Coordinator
- (void)primaryAction;
@end

@implementation SystemCloseButton.Coordinator

- (void)primaryAction
{
  v2 = *self->action;

  v2(v3);
}

@end