@interface NCWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setActiveDisplayMode:(int64_t)mode unconditionallyNotifyingContentProvidingViewController:(BOOL)controller;
@end

@implementation NCWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_setActiveDisplayMode: unconditionallyNotifyingContentProvidingViewController:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_widgetExtensionContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_NCWidgetExtensionContext" hasInstanceMethod:@"_activeDisplayMode" withFullSignature:{"q", 0}];
}

- (void)_setActiveDisplayMode:(int64_t)mode unconditionallyNotifyingContentProvidingViewController:(BOOL)controller
{
  controllerCopy = controller;
  v7 = [(NCWidgetViewControllerAccessibility *)self safeValueForKey:@"_widgetExtensionContext"];
  v8 = [v7 safeIntegerForKey:@"_activeDisplayMode"];
  v9.receiver = self;
  v9.super_class = NCWidgetViewControllerAccessibility;
  [(NCWidgetViewControllerAccessibility *)&v9 _setActiveDisplayMode:mode unconditionallyNotifyingContentProvidingViewController:controllerCopy];
  if (controllerCopy || v8 != mode)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end