@interface CSChargingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CSChargingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_CSSingleBatteryChargingView"];
  [validationsCopy validateClass:@"SBUILegibilityLabel"];
  [validationsCopy validateClass:@"CSChargingViewController" hasInstanceVariable:@"_chargingView" withType:"CSBatteryChargingView"];
  [validationsCopy validateClass:@"_CSSingleBatteryChargingView" hasInstanceVariable:@"_chargePercentLabel" withType:"SBUILegibilityLabel"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSChargingViewControllerAccessibility;
  [(CSChargingViewControllerAccessibility *)&v6 viewDidAppear:appear];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(CSChargingViewControllerAccessibility *)self safeValueForKey:@"_chargingView"];
    NSClassFromString(&cfstr_Csbatterycharg_2.isa);
    if (objc_opt_isKindOfClass())
    {
      accessibilityLabel = [v4 accessibilityLabel];
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }
}

@end