@interface HeadphoneAccessoryLabeledSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setValue:(float)value animated:(BOOL)animated objectChange:(BOOL)change;
@end

@implementation HeadphoneAccessoryLabeledSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:"f" hasInstanceMethod:"B" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:? hasSwiftField:? withSwiftType:?];
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeSwiftValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  v9 = 0;
  objc_opt_class();
  v5 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:?];
  v6 = __UIAccessibilityCastAsClass();

  integerValue = [v6 integerValue];
  if (![v4 count] || (integerValue & 0x8000000000000000) != 0 || integerValue >= objc_msgSend(v4, "count"))
  {
    v8.receiver = self;
    v8.super_class = HeadphoneAccessoryLabeledSliderAccessibility;
    [(HeadphoneAccessoryLabeledSliderAccessibility *)&v8 accessibilityIncrement];
  }

  else
  {
    [v4 count];
    AXPerformSafeBlock();
  }
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  [v4 integerValue];
  AXPerformSafeBlock();
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeSwiftValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0;
  objc_opt_class();
  v5 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:?];
  v6 = __UIAccessibilityCastAsClass();

  integerValue = [v6 integerValue];
  v8 = [v4 count];
  if ((integerValue & 0x8000000000000000) != 0 || integerValue >= v8)
  {
    v12.receiver = self;
    v12.super_class = HeadphoneAccessoryLabeledSliderAccessibility;
    accessibilityValue = [(HeadphoneAccessoryLabeledSliderAccessibility *)&v12 accessibilityValue];
  }

  else
  {
    accessibilityValue = [v4 objectAtIndex:?];
  }

  v10 = accessibilityValue;

  return v10;
}

- (void)setValue:(float)value animated:(BOOL)animated objectChange:(BOOL)change
{
  changeCopy = change;
  animatedCopy = animated;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v11.receiver = self;
  v11.super_class = HeadphoneAccessoryLabeledSliderAccessibility;
  *&v10 = value;
  [(HeadphoneAccessoryLabeledSliderAccessibility *)&v11 setValue:animatedCopy animated:IsVoiceOverRunning | changeCopy objectChange:v10];
}

@end