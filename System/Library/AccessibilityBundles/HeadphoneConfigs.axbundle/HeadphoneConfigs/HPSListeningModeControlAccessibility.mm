@interface HPSListeningModeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForBTListeningMode:(int)mode;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetSegmentLabels;
- (void)addModeOptions;
@end

@implementation HPSListeningModeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:? hasInstanceVariable:? withType:?];
  [validationsCopy validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [validationsCopy validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HPSListeningModeControlAccessibility;
  [(HPSListeningModeControlAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HPSListeningModeControlAccessibility *)self _axSetSegmentLabels];
}

- (id)accessibilityElements
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = [(HPSListeningModeControlAccessibility *)self safeUIViewForKey:?];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:? count:?];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HPSListeningModeControlAccessibility;
    accessibilityElements = [(HPSListeningModeControlAccessibility *)&v8 accessibilityElements];
  }

  v6 = accessibilityElements;

  return v6;
}

- (void)addModeOptions
{
  v3.receiver = self;
  v3.super_class = HPSListeningModeControlAccessibility;
  [(HPSListeningModeControlAccessibility *)&v3 addModeOptions];
  [(HPSListeningModeControlAccessibility *)self _axSetSegmentLabels];
}

- (void)_axSetSegmentLabels
{
  LOBYTE(v9[0]) = 0;
  objc_opt_class();
  v3 = [(HPSListeningModeControlAccessibility *)self safeValueForKey:?];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeArrayForKey:?];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2020000000;
      v10 = 0;
      AXPerformSafeBlock();
      _Block_object_dispose(v9, 8);
      v7 = [v5 objectAtIndex:?];
      v8 = [(HPSListeningModeControlAccessibility *)self _axLabelForBTListeningMode:?];
      [v7 setAccessibilityLabel:?];

      ++v6;
    }

    while (v6 < [v5 count]);
  }
}

void *__59__HPSListeningModeControlAccessibility__axSetSegmentLabels__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getListeningModeFromIndex:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_axLabelForBTListeningMode:(int)mode
{
  if ((mode - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2C1FD0[mode - 1]);
  }

  return v4;
}

@end