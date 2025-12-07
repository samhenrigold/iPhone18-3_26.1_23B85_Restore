@interface VUIStackingPosterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VUIStackingPosterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.LegacyEditorialCollectionViewCell"];
  [validationsCopy validateClass:@"VUILabel"];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"animatedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"mainImageComponent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"filteredComponents" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v35 = *MEMORY[0x29EDCA608];
  v33.receiver = self;
  v33.super_class = VUIStackingPosterViewAccessibility;
  [(VUIStackingPosterViewAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  objc_opt_class();
  selfCopy = self;
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  obj = subviews;
  v5 = [subviews countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v21 = v26;
    v8 = @"VUIStackedImageView";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        MEMORY[0x29ED3FF70](v8);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          MEMORY[0x29ED3FF70](@"VUILayeredImageContainerView");
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v11 = [(VUIStackingPosterViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:MEMORY[0x29ED3FF70](@"VideosUI.LegacyEditorialCollectionViewCell")];
        if (v11)
        {
          accessibilityLabel = [v10 accessibilityLabel];
          v25[0] = MEMORY[0x29EDCA5F8];
          v25[1] = 3221225472;
          v26[0] = __80__VUIStackingPosterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
          v26[1] = &unk_29F31C520;
          v27 = accessibilityLabel;
          v24 = accessibilityLabel;
          v13 = [v11 _accessibilityFindSubviewDescendantsPassingTest:v25];
          v14 = MEMORY[0x29EDB8D80];
          v15 = AXLabelForElements();
          v16 = [v14 axArrayByIgnoringNilElementsWithCount:{2, v24, v15, v21}];
          AXLabelForElements();
          v17 = v6;
          v18 = v7;
          v20 = v19 = v8;
          [v10 setAccessibilityLabel:v20];

          v8 = v19;
          v7 = v18;
          v6 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }
}

uint64_t __80__VUIStackingPosterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x29ED3FF70](@"VUILabel");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 accessibilityLabel];
    if ([v4 length])
    {
      v5 = *(a1 + 32);
      v6 = [v3 accessibilityLabel];
      v7 = [v5 axContainsString:v6] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessibilityLabel
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = [(VUIStackingPosterViewAccessibility *)self safeArrayForKey:@"filteredComponents"];
  v4 = [(VUIStackingPosterViewAccessibility *)self safeValueForKey:@"animatedLabel"];
  v5 = [(VUIStackingPosterViewAccessibility *)self safeValueForKey:@"mainImageComponent"];
  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v18 = accessibilityExpandTVEpisodeNumber(accessibilityLabel2);
  v8 = __UIAXStringForVariables();

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:{16, v18, @"__AXStringForVariablesSentinel"}];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v14 != v4 && v14 != v5)
        {
          accessibilityLabel3 = [v14 accessibilityLabel];
          v16 = __UIAXStringForVariables();

          v8 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIStackingPosterViewAccessibility;
  [(VUIStackingPosterViewAccessibility *)&v3 layoutSubviews];
  [(VUIStackingPosterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end