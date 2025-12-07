@interface UIActivityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIActivityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIActivityViewController" hasInstanceMethod:@"_cancel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIActivityViewController" isKindOfClass:@"UIViewController"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UIActivityViewControllerAccessibility;
  [(UIActivityViewControllerAccessibility *)&v5 viewDidAppear:appear];
  v4 = [(UIActivityViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityIdentifier:@"ActivityListView"];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = UIActivityViewControllerAccessibility;
  [(UIActivityViewControllerAccessibility *)&v3 viewWillDisappear:disappear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end