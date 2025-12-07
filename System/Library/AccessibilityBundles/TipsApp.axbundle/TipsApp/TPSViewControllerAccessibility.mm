@interface TPSViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setLoading:(BOOL)loading;
@end

@implementation TPSViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSViewController" hasInstanceMethod:@"setLoading:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TPSViewController" hasInstanceVariable:@"_loading" withType:"B"];
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  v5 = [(TPSViewControllerAccessibility *)self safeBoolForKey:@"_loading"];
  v6.receiver = self;
  v6.super_class = TPSViewControllerAccessibility;
  [(TPSViewControllerAccessibility *)&v6 setLoading:loadingCopy];
  if (v5 != loadingCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end