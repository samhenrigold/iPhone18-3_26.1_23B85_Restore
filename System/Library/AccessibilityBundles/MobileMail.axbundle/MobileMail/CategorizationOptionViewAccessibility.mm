@interface CategorizationOptionViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CategorizationOptionViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v35 = *MEMORY[0x29EDCA608];
  v32.receiver = self;
  v32.super_class = CategorizationOptionViewAccessibility;
  [(CategorizationOptionViewAccessibility *)&v32 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  subviews = [v17 subviews];
  firstObject = [subviews firstObject];

  v16 = firstObject;
  [firstObject subviews];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v21)
  {
    v20 = *v29;
    v19 = *MEMORY[0x29EDC7F70];
    v4 = *MEMORY[0x29EDC7FC0];
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        objc_opt_class();
        v23 = __UIAccessibilityCastAsClass();
        subviews2 = [v23 subviews];
        v8 = UIAXStringForAllChildren();
        [v6 setIsAccessibilityElement:1];
        v22 = v8;
        [v6 setAccessibilityLabel:v8];
        [v6 setAccessibilityTraits:v19];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = subviews2;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            v13 = 0;
            do
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              accessibilityIdentifier = [*(*(&v24 + 1) + 8 * v13) accessibilityIdentifier];
              v15 = [accessibilityIdentifier isEqualToString:@"checkmark.circle.fill"];

              if (v15)
              {
                [v6 setAccessibilityTraits:v4];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v11);
        }

        ++v5;
      }

      while (v5 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v21);
  }
}

@end