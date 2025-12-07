@interface SUUIOnboardingAffiliationCirclesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleLayoutChangedTimerFired:(id)fired;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUUIOnboardingAffiliationCirclesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationCirclesViewController" hasInstanceMethod:@"instructionsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIOnboardingInstructionsView" hasInstanceMethod:@"explanationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIOnboardingInstructionsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self safeValueForKey:@"instructionsView"];
  v4 = [v3 safeValueForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v3 loadView];
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v5 viewDidAppear:appear];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v4 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axHandleLayoutChangedTimerFired_ selector:0 userInfo:1 repeats:2.0];
    [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"AXLayoutChangedTimerKey"];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilityValueForKey:@"AXLayoutChangedTimerKey"];
  [v5 invalidate];
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"AXLayoutChangedTimerKey"];
  v6.receiver = self;
  v6.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v6 viewWillDisappear:disappearCopy];
}

- (void)_axHandleLayoutChangedTimerFired:(id)fired
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v3 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v3, 0);
  }
}

@end