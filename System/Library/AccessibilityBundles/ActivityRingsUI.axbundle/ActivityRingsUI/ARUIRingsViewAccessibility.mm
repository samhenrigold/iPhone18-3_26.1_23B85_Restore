@interface ARUIRingsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation ARUIRingsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ARUIRingsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  v2 = +[NSMutableArray array];
  v33 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  ringGroupControllers = [v3 ringGroupControllers];
  v6 = [ringGroupControllers count];

  if (v6)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    ringGroupControllers2 = [v4 ringGroupControllers];
    v8 = [ringGroupControllers2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(ringGroupControllers2);
          }

          v33 = 0;
          objc_opt_class();
          v12 = __UIAccessibilityCastAsSafeCategory();
          if (v33 == 1)
          {
            abort();
          }

          v13 = v12;
          _accessibilityLocalizedRingDescriptions = [v12 _accessibilityLocalizedRingDescriptions];
          [v2 axSafelyAddObjectsFromArray:_accessibilityLocalizedRingDescriptions];
        }

        v9 = [ringGroupControllers2 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v9);
    }
  }

  ringGroups = [v4 ringGroups];
  v16 = [ringGroups count];

  if (v16)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    ringGroups2 = [v4 ringGroups];
    v18 = [ringGroups2 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(ringGroups2);
          }

          accessibilityLabel = [*(*(&v25 + 1) + 8 * j) accessibilityLabel];
          [v2 axSafelyAddObject:accessibilityLabel];
        }

        v19 = [ringGroups2 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v19);
    }
  }

  v23 = [v2 componentsJoinedByString:{@", "}];

  return v23;
}

- (BOOL)canBecomeFocused
{
  if (([(ARUIRingsViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = ARUIRingsViewAccessibility;
  return [(ARUIRingsViewAccessibility *)&v4 canBecomeFocused];
}

@end