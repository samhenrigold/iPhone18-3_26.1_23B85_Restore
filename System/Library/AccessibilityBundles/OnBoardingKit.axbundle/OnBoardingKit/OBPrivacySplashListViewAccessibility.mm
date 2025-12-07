@interface OBPrivacySplashListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (OBPrivacySplashListViewAccessibility)initWithContentList:(id)list dataDetectorTypes:(unint64_t)types scrollView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupTextViewForSwitchControl:(id)control;
@end

@implementation OBPrivacySplashListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBPrivacySplashListView" hasInstanceVariable:@"_textViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"OBPrivacySplashListView" hasInstanceMethod:@"initWithContentList:dataDetectorTypes:scrollView:" withFullSignature:{"@", "Q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v34 = *MEMORY[0x29EDCA608];
  v32.receiver = self;
  v32.super_class = OBPrivacySplashListViewAccessibility;
  [(OBPrivacySplashListViewAccessibility *)&v32 _accessibilityLoadAccessibilityInformation];
  v31 = 0;
  objc_opt_class();
  selfCopy = self;
  v3 = [(OBPrivacySplashListViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  v4 = __UIAccessibilityCastAsClass();

  delegate = [v4 delegate];
  NSClassFromString(&cfstr_Obprivacysplas_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v4 contentSize], v8 = v7, objc_msgSend(v4, "bounds"), v8 > v9) && _AXSAssistiveTouchScannerEnabled())
  {
    v10 = MEMORY[0x29C2E3D80]() ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v31 = 0;
  objc_opt_class();
  v11 = [(OBPrivacySplashListViewAccessibility *)selfCopy safeValueForKey:@"_textViews"];
  v12 = __UIAccessibilityCastAsClass();

  if (v12)
  {
    v23 = v12;
    v24 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = *v28;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v31 = 0;
        objc_opt_class();
        v17 = __UIAccessibilityCastAsClass();
        if (v31 == 1)
        {
          abort();
        }

        v18 = v17;
        text = [v17 text];
        if ([text length])
        {
        }

        else
        {
          attributedText = [v18 attributedText];
          string = [attributedText string];
          v22 = [string length];

          if (!v22)
          {
            [v18 setIsAccessibilityElement:0];
            goto LABEL_21;
          }
        }

        [v18 _accessibilitySetTextViewShouldBreakUpParagraphs:{1, v23, v24}];
        if (v10)
        {
          [(OBPrivacySplashListViewAccessibility *)selfCopy _axSetupTextViewForSwitchControl:v18];
        }

LABEL_21:
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (!v14)
      {
LABEL_23:

        v12 = v23;
        v4 = v24;
        break;
      }
    }
  }
}

uint64_t __82__OBPrivacySplashListViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (OBPrivacySplashListViewAccessibility)initWithContentList:(id)list dataDetectorTypes:(unint64_t)types scrollView:(id)view
{
  v7.receiver = self;
  v7.super_class = OBPrivacySplashListViewAccessibility;
  v5 = [(OBPrivacySplashListViewAccessibility *)&v7 initWithContentList:list dataDetectorTypes:types scrollView:view];
  [(OBPrivacySplashListViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

- (void)_axSetupTextViewForSwitchControl:(id)control
{
  v15 = *MEMORY[0x29EDCA608];
  controlCopy = control;
  accessibilityElements = [controlCopy accessibilityElements];
  if ([accessibilityElements count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = accessibilityElements;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAccessibilityRespondsToUserInteraction:{1, v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [controlCopy setIsAccessibilityElement:1];
    [controlCopy setAccessibilityRespondsToUserInteraction:1];
  }
}

@end