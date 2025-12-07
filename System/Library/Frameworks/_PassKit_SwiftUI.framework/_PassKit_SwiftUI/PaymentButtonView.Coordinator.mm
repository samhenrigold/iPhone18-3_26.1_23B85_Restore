@interface PaymentButtonView.Coordinator
- (void)callback;
@end

@implementation PaymentButtonView.Coordinator

- (void)callback
{
  v2 = *self->action;

  v2(v3);
}

@end