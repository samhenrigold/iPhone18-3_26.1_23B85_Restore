@interface PKIdentityHeroViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKIdentityHeroViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKIdentityHeroViewControllerAccessibility;
  [(PKIdentityHeroViewControllerAccessibility *)&v3 viewWillAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end