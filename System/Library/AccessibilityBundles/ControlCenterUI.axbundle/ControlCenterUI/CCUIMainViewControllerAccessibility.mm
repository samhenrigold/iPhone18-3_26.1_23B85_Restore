@interface CCUIMainViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)overlayBackgroundViewTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CCUIMainViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIMainViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIMainViewController" hasInstanceMethod:@"overlayBackgroundViewTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIMainViewControllerAccessibility;
  [(CCUIMainViewControllerAccessibility *)&v4 viewDidAppear:appear];
  v3 = accessibilityLocalizedString(@"control.center.showing");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CCUIMainViewControllerAccessibility;
  [(CCUIMainViewControllerAccessibility *)&v3 viewDidDisappear:disappear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)overlayBackgroundViewTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() && !_AXSCommandAndControlEnabled())
  {
    v5.receiver = self;
    v5.super_class = CCUIMainViewControllerAccessibility;
    [(CCUIMainViewControllerAccessibility *)&v5 overlayBackgroundViewTapped:tappedCopy];
  }
}

@end