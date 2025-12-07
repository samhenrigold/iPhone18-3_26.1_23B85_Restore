@interface _MKLineHeaderModelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)contentAttributedString;
@end

@implementation _MKLineHeaderModelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_MKLineHeaderModel" hasInstanceMethod:@"contentAttributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKLineHeaderModel" hasInstanceVariable:@"_tokens" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"_MKTokenAttributedString" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKTokenAttributedString" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (id)contentAttributedString
{
  v31 = *MEMORY[0x29EDCA608];
  v29.receiver = self;
  v29.super_class = _MKLineHeaderModelAccessibility;
  contentAttributedString = [(_MKLineHeaderModelAccessibility *)&v29 contentAttributedString];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  objc_opt_class();
  v5 = [(_MKLineHeaderModelAccessibility *)self safeValueForKey:@"_tokens"];
  v6 = __UIAccessibilityCastAsClass();

  v24 = contentAttributedString;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v26;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      v13 = [v12 safeValueForKey:@"attributedString"];
      v14 = __UIAccessibilityCastAsClass();

      if (!v14)
      {
        objc_opt_class();
        v19 = [v12 safeValueForKey:@"string"];
        accessibilityLabel2 = __UIAccessibilityCastAsClass();

        accessibilityLabel = [accessibilityLabel2 accessibilityLabel];
        v18 = accessibilityLabel;
        if (accessibilityLabel)
        {
          v21 = accessibilityLabel;
        }

        else
        {
          v21 = accessibilityLabel2;
        }

        v23 = v21;
        v17 = __UIAXStringForVariables();

LABEL_15:
        v9 = v17;
        goto LABEL_16;
      }

      accessibilityLabel2 = [v14 accessibilityLabel];
      v16 = accessibilityLabel2;
      if (!accessibilityLabel2)
      {
        string = [v14 string];
        v16 = string;
      }

      v23 = v16;
      v17 = __UIAXStringForVariables();

      v18 = string;
      v9 = v17;
      if (!accessibilityLabel2)
      {
        goto LABEL_15;
      }

LABEL_16:
    }

    v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:{16, v23, @"__AXStringForVariablesSentinel"}];
  }

  while (v8);
LABEL_20:

  [v24 setAccessibilityLabel:v9];

  return v24;
}

@end