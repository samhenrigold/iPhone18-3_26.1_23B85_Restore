@interface OBWelcomeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation OBWelcomeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = OBWelcomeControllerAccessibility;
  [(OBWelcomeControllerAccessibility *)&v8 viewDidAppear:appear];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(OBWelcomeControllerAccessibility *)self safeValueForKey:@"headerView"];
  UIAccessibilityPostNotification(v4, v5);

  v6 = *MEMORY[0x29EDC7488];
  v7 = [(OBWelcomeControllerAccessibility *)self safeValueForKey:@"headerView"];
  UIAccessibilityPostNotification(v6, v7);
}

@end