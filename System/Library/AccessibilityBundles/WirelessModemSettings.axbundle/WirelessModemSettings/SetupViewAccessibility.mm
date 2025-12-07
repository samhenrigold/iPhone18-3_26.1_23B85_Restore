@interface SetupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation SetupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SetupView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [validationsCopy validateClass:@"SetupView" hasInstanceVariable:@"_setupSteps" withType:"NSMutableArray"];
}

- (id)accessibilityElements
{
  v32 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SetupViewAccessibility *)self safeValueForKey:@"_title"];
  [array axSafelyAddObject:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(SetupViewAccessibility *)self safeValueForKey:@"_setupSteps"];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"NSArray";
    v8 = *v28;
    v9 = @"UILabel";
    v24 = *v28;
    do
    {
      v10 = 0;
      v25 = v6;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = __UIAccessibilitySafeClass();
        firstObject = [v11 firstObject];
        v13 = __UIAccessibilitySafeClass();

        lastObject = [v11 lastObject];
        v15 = __UIAccessibilitySafeClass();

        if ([v13 isAccessibilityElement])
        {
          v16 = MEMORY[0x29EDBA0F8];
          [v13 accessibilityLabel];
          v18 = v17 = array;
          [v15 accessibilityLabel];
          v19 = v9;
          v21 = v20 = v7;
          v22 = [v16 stringWithFormat:@"%@, %@", v18, v21];
          [v15 setAccessibilityLabel:v22];

          v7 = v20;
          v9 = v19;

          array = v17;
          v8 = v24;
          v6 = v25;
          [v13 setIsAccessibilityElement:0];
        }

        [array axSafelyAddObject:v15];

        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  return array;
}

@end