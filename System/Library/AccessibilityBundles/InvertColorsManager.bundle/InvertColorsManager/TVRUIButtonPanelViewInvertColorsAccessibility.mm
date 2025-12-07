@interface TVRUIButtonPanelViewInvertColorsAccessibility
- (TVRUIButtonPanelViewInvertColorsAccessibility)initWithPrimaryButtonType:(int64_t)type secondaryLeftButtons:(id)buttons secondaryRightButtons:(id)rightButtons styleProvider:(id)provider;
- (void)_accessibilityLoadInvertColors;
@end

@implementation TVRUIButtonPanelViewInvertColorsAccessibility

- (TVRUIButtonPanelViewInvertColorsAccessibility)initWithPrimaryButtonType:(int64_t)type secondaryLeftButtons:(id)buttons secondaryRightButtons:(id)rightButtons styleProvider:(id)provider
{
  v8.receiver = self;
  v8.super_class = TVRUIButtonPanelViewInvertColorsAccessibility;
  v6 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)&v8 initWithPrimaryButtonType:type secondaryLeftButtons:buttons secondaryRightButtons:rightButtons styleProvider:provider];
  [(TVRUIButtonPanelViewInvertColorsAccessibility *)v6 _accessibilityLoadInvertColors];
  return v6;
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)self safeArrayForKey:@"leftButtons"];
  v4 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)self safeArrayForKey:@"rightButtons"];
  v5 = [NSArray axArrayWithPossiblyNilArrays:2, v3, v4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v17 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v25 = 0;
        objc_opt_class();
        v7 = __UIAccessibilityCastAsClass();
        if (v25 == 1)
        {
LABEL_22:
          abort();
        }

        v19 = v7;
        v20 = v6;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        subviews = [v7 subviews];
        v9 = [subviews countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(subviews);
              }

              v13 = *(*(&v21 + 1) + 8 * i);
              AXSafeClassFromString();
              if (objc_opt_isKindOfClass())
              {
                v25 = 0;
                objc_opt_class();
                v14 = [v13 safeValueForKey:@"_materialLayer"];
                v15 = __UIAccessibilityCastAsClass();

                if (v25 == 1)
                {
                  goto LABEL_22;
                }

                if (v15)
                {
                  [AXInvertColorsAppHelper toggleInvertColors:v15 moveFilterToFront:1];
                }
              }
            }

            v10 = [subviews countByEnumeratingWithState:&v21 objects:v30 count:16];
          }

          while (v10);
        }

        v6 = v20 + 1;
      }

      while ((v20 + 1) != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }
}

@end