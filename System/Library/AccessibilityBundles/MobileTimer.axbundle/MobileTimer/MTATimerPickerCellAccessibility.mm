@interface MTATimerPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setState:(unint64_t)state animated:(BOOL)animated;
@end

@implementation MTATimerPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"picker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"setState:animated:" withFullSignature:{"v", "Q", "B", 0}];
}

- (void)setState:(unint64_t)state animated:(BOOL)animated
{
  v10.receiver = self;
  v10.super_class = MTATimerPickerCellAccessibility;
  [(MTATimerPickerCellAccessibility *)&v10 setState:state animated:animated];
  v6 = [(MTATimerPickerCellAccessibility *)self safeValueForKey:@"picker"];
  v7 = [(MTATimerPickerCellAccessibility *)self safeValueForKey:@"timeView"];
  if (state - 1 <= 2)
  {
    v8 = (state - 1) & 7;
    v9 = 6u >> v8;
    [v6 setIsAccessibilityElement:1u >> v8];
    [v7 setIsAccessibilityElement:v9 & 1];
  }

  AXPerformSafeBlock();
}

@end