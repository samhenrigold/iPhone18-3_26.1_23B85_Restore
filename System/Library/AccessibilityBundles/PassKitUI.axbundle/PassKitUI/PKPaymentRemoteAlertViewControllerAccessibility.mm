@interface PKPaymentRemoteAlertViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentRemoteAlertViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKPaymentRemoteAlertViewControllerAccessibility;
  [(PKPaymentRemoteAlertViewControllerAccessibility *)&v3 viewWillAppear:appear];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end