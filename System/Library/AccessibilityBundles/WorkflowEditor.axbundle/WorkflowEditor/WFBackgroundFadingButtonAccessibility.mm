@interface WFBackgroundFadingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
@end

@implementation WFBackgroundFadingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFBackgroundFadingButton" hasInstanceMethod:@"backgroundColorsByState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFBackgroundFadingButton" hasInstanceMethod:@"setBackgroundColor:forState:" withFullSignature:{"v", "@", "Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v32 = *MEMORY[0x29EDCA608];
  v30.receiver = self;
  v30.super_class = WFBackgroundFadingButtonAccessibility;
  [(WFBackgroundFadingButtonAccessibility *)&v30 _accessibilityLoadAccessibilityInformation];
  v29 = 0;
  objc_opt_class();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __83__WFBackgroundFadingButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v20 = &unk_29F322FB8;
  selfCopy = self;
  v22 = &v23;
  AXPerformSafeBlock();
  v3 = v24[5];
  _Block_object_dispose(&v23, 8);

  v4 = __UIAccessibilityCastAsClass();

  if (v29 == 1)
  {
    abort();
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v31 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:unsignedIntegerValue | 8];
        [v4 setObject:v10 forKey:v12];
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v31 count:16];
    }

    while (v6);
  }
}

uint64_t __83__WFBackgroundFadingButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) backgroundColorsByState];

  return MEMORY[0x2A1C71028]();
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = WFBackgroundFadingButtonAccessibility;
  [(WFBackgroundFadingButtonAccessibility *)&v5 setBackgroundColor:color forState:state];
  [(WFBackgroundFadingButtonAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end