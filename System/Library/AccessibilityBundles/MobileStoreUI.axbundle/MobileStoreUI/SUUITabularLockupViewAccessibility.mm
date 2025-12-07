@interface SUUITabularLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUITabularLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUITabularLockupView" hasInstanceVariable:@"_layout" withType:"SUUITabularLockupLayout"];
  [validationsCopy validateClass:@"SUUITabularLockupView" hasInstanceVariable:@"_viewElementViews" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SUUITabularLockupLayout" hasInstanceMethod:@"columns" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUITabularLockupColumn" hasInstanceMethod:@"childViewElements" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v53 = *MEMORY[0x29EDCA608];
  v49 = 0;
  v3 = [(SUUITabularLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"columns"];
  v6 = __UIAccessibilitySafeClass();

  HIBYTE(v49) = 0;
  v7 = [(SUUITabularLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v8 = __UIAccessibilitySafeClass();

  array = [MEMORY[0x29EDB8DE8] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v35 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v49 = 0;
        v13 = __UIAccessibilitySafeClass();
        if (v49 == 1 || (v14 = v13, [v13 safeValueForKey:@"childViewElements"], v15 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, HIBYTE(v49) == 1))
        {
          abort();
        }

        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v42;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v42 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [v8 objectForKey:*(*(&v41 + 1) + 8 * j)];
              NSClassFromString(&cfstr_Suuiattributed.isa);
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v22];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v19);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = array;
  v23 = [v36 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v38;
    do
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v36);
        }

        accessibilityLabel = [*(*(&v37 + 1) + 8 * v27) accessibilityLabel];
        v30 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"•" withString:{@", "}];

        v32 = v30;
        v33 = @"__AXStringForVariablesSentinel";
        v25 = __UIAXStringForVariables();

        ++v27;
        v28 = v25;
      }

      while (v24 != v27);
      v24 = [v36 countByEnumeratingWithState:&v37 objects:v50 count:{16, v30, @"__AXStringForVariablesSentinel"}];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end