@interface ASCredentialProviderViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ASCredentialProviderViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ASCredentialProviderViewControllerAccessibility;
  [(ASCredentialProviderViewControllerAccessibility *)&v7 viewDidAppear:appear];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(ASCredentialProviderViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  UIAccessibilityPostNotification(v4, v5);

  v6 = [(ASCredentialProviderViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v6 setAccessibilityViewIsModal:1];
}

@end