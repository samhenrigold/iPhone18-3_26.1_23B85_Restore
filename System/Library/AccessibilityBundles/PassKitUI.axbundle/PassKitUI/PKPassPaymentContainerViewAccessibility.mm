@interface PKPassPaymentContainerViewAccessibility
- (void)_transitionViewsFromPayState:(int64_t)state animated:(BOOL)animated;
@end

@implementation PKPassPaymentContainerViewAccessibility

- (void)_transitionViewsFromPayState:(int64_t)state animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentContainerViewAccessibility;
  [(PKPassPaymentContainerViewAccessibility *)&v4 _transitionViewsFromPayState:state animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end