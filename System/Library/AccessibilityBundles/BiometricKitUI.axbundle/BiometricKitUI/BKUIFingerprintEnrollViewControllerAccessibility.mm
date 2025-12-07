@interface BKUIFingerprintEnrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_finishEnrollmentPhaseTwo;
- (void)_startTutorial:(BOOL)tutorial;
- (void)transitionToEnrollView:(BOOL)view;
@end

@implementation BKUIFingerprintEnrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"_startTutorial:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"transitionToEnrollView:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"_finishEnrollmentPhaseTwo" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceVariable:@"_mesaFirstEnrollView" withType:"BKUICurvesView"];
  [validationsCopy validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceVariable:@"_enrollmentPhaseTwo" withType:"BOOL"];
}

- (void)_startTutorial:(BOOL)tutorial
{
  v6.receiver = self;
  v6.super_class = BKUIFingerprintEnrollViewControllerAccessibility;
  [(BKUIFingerprintEnrollViewControllerAccessibility *)&v6 _startTutorial:tutorial];
  v4 = [(BKUIFingerprintEnrollViewControllerAccessibility *)self safeBoolForKey:@"_enrollmentPhaseTwo"];
  v5 = [(BKUIFingerprintEnrollViewControllerAccessibility *)self safeValueForKey:@"_mesaFirstEnrollView"];
  [v5 setIsAccessibilityElement:v4 ^ 1u];
}

- (void)_finishEnrollmentPhaseTwo
{
  v2.receiver = self;
  v2.super_class = BKUIFingerprintEnrollViewControllerAccessibility;
  [(BKUIFingerprintEnrollViewControllerAccessibility *)&v2 _finishEnrollmentPhaseTwo];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)transitionToEnrollView:(BOOL)view
{
  v3.receiver = self;
  v3.super_class = BKUIFingerprintEnrollViewControllerAccessibility;
  [(BKUIFingerprintEnrollViewControllerAccessibility *)&v3 transitionToEnrollView:view];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end