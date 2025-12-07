@interface KeyboardControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)specifiers;
@end

@implementation KeyboardControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"KeyboardController"];
  [validationsCopy validateClass:@"KeyboardController" hasInstanceMethod:@"specifiers" withFullSignature:{"@", 0}];
}

- (id)specifiers
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = KeyboardControllerAccessibility;
  [(KeyboardControllerAccessibility *)&v16 specifiers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x29EDC6320];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 propertyForKey:{v6, v12}];
        v10 = [v9 isEqualToString:@"KeyboardPeriodShortcut"];

        if (v10)
        {
          [v8 accessibilitySetIdentification:@"KeyboardPeriodShortcut"];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end