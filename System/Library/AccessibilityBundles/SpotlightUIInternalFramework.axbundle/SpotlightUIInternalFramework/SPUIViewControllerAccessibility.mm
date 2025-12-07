@interface SPUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)activateViewController:(id)controller animate:(BOOL)animate;
@end

@implementation SPUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUIViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SPUIViewController" hasInstanceMethod:@"activateViewController: animate:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SPUIViewController" hasInstanceMethod:@"activeViewController" withFullSignature:{"@", 0}];
}

- (void)activateViewController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  v7 = [(SPUIViewControllerAccessibility *)self safeValueForKey:@"activeViewController"];
  v8.receiver = self;
  v8.super_class = SPUIViewControllerAccessibility;
  [(SPUIViewControllerAccessibility *)&v8 activateViewController:controllerCopy animate:animateCopy];

  if (v7 != controllerCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end