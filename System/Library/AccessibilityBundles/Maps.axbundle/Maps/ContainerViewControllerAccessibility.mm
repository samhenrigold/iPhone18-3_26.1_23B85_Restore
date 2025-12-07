@interface ContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout;
@end

@implementation ContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ContainerViewController" hasInstanceMethod:@"presentController: animated: useDefaultContaineeLayout:" withFullSignature:{"v", "@", "B", "B", 0}];
  [validationsCopy validateClass:@"ContainerViewController" hasInstanceVariable:@"_currentViewController" withType:"UIViewController<ContaineeProtocol>"];
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  v9 = [(ContainerViewControllerAccessibility *)self safeValueForKey:@"_currentViewController"];
  v13.receiver = self;
  v13.super_class = ContainerViewControllerAccessibility;
  [(ContainerViewControllerAccessibility *)&v13 presentController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
  if (v9 != controllerCopy)
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = *MEMORY[0x29EDC7F10];
    _accessibilityFirstNonGrabberElement = [v10 _accessibilityFirstNonGrabberElement];
    UIAccessibilityPostNotification(v11, _accessibilityFirstNonGrabberElement);
  }
}

@end