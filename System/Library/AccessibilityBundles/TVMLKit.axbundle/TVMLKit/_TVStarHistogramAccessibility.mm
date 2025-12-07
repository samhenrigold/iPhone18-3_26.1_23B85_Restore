@interface _TVStarHistogramAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAncestorFocusParcel;
- (id)accessibilityLabel;
@end

@implementation _TVStarHistogramAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVStarHistogram" hasInstanceMethod:@"starBars" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVStarBar" hasInstanceMethod:@"numStars" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"_TVStarBar" hasInstanceMethod:@"countStr" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = 0;
  objc_opt_class();
  v3 = [(_TVStarHistogramAccessibility *)self safeValueForKey:@"starBars"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 count])
  {
    v30 = v4;
    selfCopy = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0x29EDBA000uLL;
      v9 = @"numStars";
      v10 = *v36;
      do
      {
        v11 = 0;
        v32 = v6;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * v11);
          v39 = 0;
          objc_opt_class();
          v13 = [v12 safeValueForKey:v9];
          v14 = __UIAccessibilityCastAsClass();

          if (v39 == 1 || (v39 = 0, objc_opt_class(), [v12 safeValueForKey:@"countStr"], v15 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v16 = objc_claimAutoreleasedReturnValue(), v15, v39 == 1))
          {
            abort();
          }

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            string = [v16 string];
            integerValue = [string integerValue];

            if (integerValue >= 1)
            {
              v20 = MEMORY[0x29EDBA0F8];
              accessibilityLocalizedString(@"star.histogram");
              v21 = v10;
              v22 = v9;
              v24 = v23 = v8;
              v28 = [v20 stringWithFormat:v24, integerValue, objc_msgSend(v14, "integerValue")];
              v29 = @"__AXStringForVariablesSentinel";
              v25 = __UIAXStringForVariables();

              v8 = v23;
              v9 = v22;
              v10 = v21;
              v6 = v32;
              v7 = v25;
            }
          }

          ++v11;
        }

        while (v6 != v11);
        v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v4 = v30;
    self = selfCopy;
  }

  else
  {
    v7 = 0;
  }

  if (![v7 length])
  {
    v34.receiver = self;
    v34.super_class = _TVStarHistogramAccessibility;
    accessibilityLabel = [(_TVStarHistogramAccessibility *)&v34 accessibilityLabel];

    v7 = accessibilityLabel;
  }

  return v7;
}

- (id)_accessibilityAncestorFocusParcel
{
  mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
  isProcessTVAppStore = [mEMORY[0x29EDBDDF0] isProcessTVAppStore];

  if (isProcessTVAppStore)
  {
    _accessibilityAncestorFocusParcel = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVStarHistogramAccessibility;
    _accessibilityAncestorFocusParcel = [(_TVStarHistogramAccessibility *)&v7 _accessibilityAncestorFocusParcel];
  }

  return _accessibilityAncestorFocusParcel;
}

@end