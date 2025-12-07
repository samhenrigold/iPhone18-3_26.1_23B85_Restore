@interface VUIMediaTagsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateAccessibilityInformation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation VUIMediaTagsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIImageView"];
  [validationsCopy validateClass:@"VUIImageView" hasProperty:@"image" withType:"@"];
  [validationsCopy validateClass:@"VUIMediaTagsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"VUIMediaTagsView" hasProperty:@"viewsMap" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v36 = *MEMORY[0x29EDCA608];
  v34.receiver = self;
  v34.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v34 _accessibilityLoadAccessibilityInformation];
  v33 = 0;
  objc_opt_class();
  v3 = [(VUIMediaTagsViewAccessibility *)self safeValueForKey:@"viewsMap"];
  v4 = __UIAccessibilityCastAsClass();

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v27 = allKeys;
    v28 = *MEMORY[0x29EDC7FA0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v10 isEqualToString:@"VUIMediaTagKeySeparator"])
          {
            v11 = [v4 objectForKey:@"VUIMediaTagKeySeparator"];
            [v11 setIsAccessibilityElement:0];
            goto LABEL_38;
          }

          if ([v10 isEqualToString:@"VUIMediaTagKeyBrandLinkButton"])
          {
            v11 = [v4 objectForKey:v10];
            [v11 setAccessibilityIdentifier:@"BrandLinkButton"];
            goto LABEL_38;
          }

          if (([v10 isEqualToString:@"VUIMediaTagKeyRatingImage"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyClosedCaptionImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyVideoResolutionImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyVideoDynamicRangeImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyADLocalesImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeySDHLocalesImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyDolbyAtmosImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyAvailabilityImage") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyItunesExtras") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyCommonSenseImage") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"VUIMediaTagKeyTomatoFreshnessImage"))
          {
            v11 = [v4 objectForKey:v10];
            MEMORY[0x29ED3FF70](@"VUIImageView");
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 safeValueForKey:@"image"];
            }

            else
            {
              v33 = 0;
              objc_opt_class();
              v12 = __UIAccessibilityCastAsClass();
              if (v33 == 1)
              {
                goto LABEL_42;
              }
            }

            v13 = v12;
            accessibilityIdentifier = [v12 accessibilityIdentifier];

            mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
            v16 = [mEMORY[0x29EDBDDF0] accessibilityLabelForID:accessibilityIdentifier];

            [v11 setAccessibilityTraits:v28];
            if ([v10 isEqualToString:@"VUIMediaTagKeyCommonSenseImage"])
            {
              v33 = 0;
              objc_opt_class();
              v17 = v4;
              v18 = @"VUIMediaTagKeyCommonSenseRating";
              goto LABEL_30;
            }

            if ([v10 isEqualToString:@"VUIMediaTagKeyTomatoFreshnessImage"])
            {
              v33 = 0;
              objc_opt_class();
              v17 = v4;
              v18 = @"VUIMediaTagKeyTomatoPercentage";
LABEL_30:
              v19 = [v17 objectForKey:v18];
              v20 = __UIAccessibilityCastAsClass();

              if (v33 == 1)
              {
LABEL_42:
                abort();
              }

              text = [v20 text];
              v22 = __UIAXStringForVariables();
              [v20 setAccessibilityLabel:{v22, text, @"__AXStringForVariablesSentinel"}];
            }

            else
            {
              if ([v10 isEqualToString:@"VUIMediaTagKeyAvailabilityImage"] && (objc_msgSend(v11, "accessibilityIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", @"Punchout"), v23, v24))
              {
                v25 = v11;
                v26 = 0;
              }

              else
              {
                [v11 setAccessibilityLabel:v16];
                v25 = v11;
                v26 = 1;
              }

              [v25 setIsAccessibilityElement:v26];
            }

            allKeys = v27;
LABEL_38:

            continue;
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }
}

- (void)_accessibilityUpdateAccessibilityInformation
{
  v3 = [(VUIMediaTagsViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_14];
  if (v3)
  {
    v4 = v3;
    -[VUIMediaTagsViewAccessibility setAccessibilityTraits:](self, "setAccessibilityTraits:", [v3 accessibilityTraits]);
    [v4 accessibilityActivationPoint];
    [(VUIMediaTagsViewAccessibility *)self setAccessibilityActivationPoint:?];
    v3 = v4;
  }
}

uint64_t __77__VUIMediaTagsViewAccessibility__accessibilityUpdateAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"BrandLinkButton"];

  return v3;
}

- (id)accessibilityLabel
{
  subviews = [(VUIMediaTagsViewAccessibility *)self subviews];
  v3 = [subviews ax_filteredArrayUsingBlock:&__block_literal_global_389];
  v4 = AXLabelForElements();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  if (accessibilityTraits_onceToken_canonicalVCClass != -1)
  {
    [VUIMediaTagsViewAccessibility accessibilityTraits];
  }

  if (accessibilityTraits_canonicalVCClass && ([(VUIMediaTagsViewAccessibility *)self _accessibilityFindViewControllerAncestorOfType:?], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v6.receiver = self;
    v6.super_class = VUIMediaTagsViewAccessibility;
    return [(VUIMediaTagsViewAccessibility *)&v6 accessibilityTraits]& ~*MEMORY[0x29EDC7F80];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VUIMediaTagsViewAccessibility;
    return [(VUIMediaTagsViewAccessibility *)&v5 accessibilityTraits];
  }
}

uint64_t __52__VUIMediaTagsViewAccessibility_accessibilityTraits__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.CanonicalDocumentViewController");
  accessibilityTraits_canonicalVCClass = result;
  return result;
}

- (void)didMoveToWindow
{
  [(VUIMediaTagsViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v3 didMoveToWindow];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v3 layoutSubviews];
  [(VUIMediaTagsViewAccessibility *)self _accessibilityUpdateAccessibilityInformation];
}

@end