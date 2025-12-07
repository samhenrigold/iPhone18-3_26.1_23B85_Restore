@interface BKUIPearlEnrollControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setCoachingHidden:(BOOL)hidden animated:(BOOL)animated;
@end

@implementation BKUIPearlEnrollControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"coachingController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlCoachingController" hasInstanceMethod:@"instructionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"enrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_instructionView" withType:"BKUIPearlInstructionView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollController" hasInstanceMethod:@"setCoachingHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)setCoachingHidden:(BOOL)hidden animated:(BOOL)animated
{
  v11.receiver = self;
  v11.super_class = BKUIPearlEnrollControllerAccessibility;
  [(BKUIPearlEnrollControllerAccessibility *)&v11 setCoachingHidden:hidden animated:animated];
  objc_opt_class();
  v6 = [(BKUIPearlEnrollControllerAccessibility *)self safeValueForKeyPath:@"enrollViewController.view"];
  v7 = __UIAccessibilityCastAsClass();

  if (hidden)
  {
    [v7 setAccessibilityElementsHidden:0];
    objc_opt_class();
    v8 = @"enrollViewController.instructionView.instructionLabel";
  }

  else
  {
    [v7 setAccessibilityElementsHidden:1];
    objc_opt_class();
    v8 = @"coachingController.instructionView.instructionLabel";
  }

  v9 = [(BKUIPearlEnrollControllerAccessibility *)self safeValueForKeyPath:v8];
  v10 = __UIAccessibilityCastAsClass();

  if (v10)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v10);
  }
}

@end