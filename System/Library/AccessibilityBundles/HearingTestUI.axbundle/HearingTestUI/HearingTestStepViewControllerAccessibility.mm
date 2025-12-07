@interface HearingTestStepViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HearingTestStepViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HearingTestUI.HearingTestStepViewController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HearingTestStepViewControllerAccessibility;
  [(HearingTestStepViewControllerAccessibility *)&v7 viewDidAppear:appear];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __60__HearingTestStepViewControllerAccessibility_viewDidAppear___block_invoke;
  v4[3] = &unk_29F2C5830;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x29EDCA578], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__HearingTestStepViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  argument = [WeakRetained safeValueForKey:@"headerView"];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
}

@end