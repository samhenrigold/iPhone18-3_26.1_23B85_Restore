@interface IdentityProofingTCViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IdentityProofingTCViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = IdentityProofingTCViewControllerAccessibility;
  [(IdentityProofingTCViewControllerAccessibility *)&v3 viewWillAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end