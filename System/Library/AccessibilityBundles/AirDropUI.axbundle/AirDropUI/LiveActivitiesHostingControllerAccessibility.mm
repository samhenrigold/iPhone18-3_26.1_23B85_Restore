@interface LiveActivitiesHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation LiveActivitiesHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtGC9AirDropUI31LiveActivitiesHostingControllerVS_14AirDropPlatter_" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = LiveActivitiesHostingControllerAccessibility;
  [(LiveActivitiesHostingControllerAccessibility *)&v6 viewDidAppear:appear];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = *MEMORY[0x29EDC7F10];
  view = [v3 view];
  UIAccessibilityPostNotification(v4, view);
}

@end