@interface _TVInfoListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation _TVInfoListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVInfoListView" hasInstanceMethod:@"groupedInfos" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVInfoListInfo"];
  [validationsCopy validateClass:@"_TVInfoListInfo" hasInstanceMethod:@"headerContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVInfoListInfo" hasInstanceMethod:@"dataViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v27 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(_TVInfoListViewAccessibility *)self safeArrayForKey:@"groupedInfos"];
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        objc_opt_class();
        v5 = __UIAccessibilityCastAsClass();
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v17 + 1) + 8 * j);
              v11 = [v10 safeValueForKey:@"headerContentView"];
              [array axSafelyAddObject:v11];

              v12 = [v10 safeArrayForKey:@"dataViews"];
              [array axSafelyAddObjectsFromArray:v12];
            }

            v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v7);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  return array;
}

@end