@interface NUIContainerStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (id)_axVisibleViews;
- (id)accessibilityLabel;
@end

@implementation NUIContainerStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NUIContainerStackView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NUIContainerView" hasInstanceMethod:@"visibleArrangedSubviews" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axVisibleViews = [(NUIContainerStackViewAccessibility *)self _axVisibleViews];
  v3 = MEMORY[0x29C2D9FC0]();

  return v3;
}

- (id)_axVisibleViews
{
  objc_opt_class();
  v3 = [(NUIContainerStackViewAccessibility *)self safeValueForKey:@"visibleArrangedSubviews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)canBecomeFocused
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  gestureRecognizers = [v2 gestureRecognizers];

  v4 = [gestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [gestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end