@interface VideosUI_CanonicalBannerInfoViewAccessibility
+ (id)_axHeaderElementSwiftKeys;
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalBannerInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"titleImageView" withSwiftType:"Optional<VUIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"badgeView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"contentTitleView" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"contentSubtitleView" withSwiftType:"Optional<UIView & VUILabelBaselineProtocol>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"episodeInfoTextView" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"promoTextView" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"askToBuyPromptView" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"descriptionTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"genresAndProviderTagsView" withSwiftType:"Optional<VUIMediaTagsView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"metadataAndBadgesTagsView" withSwiftType:"Optional<VUIMediaTagsView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"disclaimerTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"availabilityTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"buttonViews" withSwiftType:"Optional<Array<UIView>>"];
}

+ (id)_axHeaderElementSwiftKeys
{
  if (_axHeaderElementSwiftKeys_onceToken_keys != -1)
  {
    +[VideosUI_CanonicalBannerInfoViewAccessibility _axHeaderElementSwiftKeys];
  }

  v3 = _axHeaderElementSwiftKeys_keys;

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v34 = *MEMORY[0x29EDCA608];
  v31.receiver = self;
  v31.super_class = VideosUI_CanonicalBannerInfoViewAccessibility;
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)&v31 _accessibilityLoadAccessibilityInformation];
  _axHeaderElementSwiftKeys = [objc_opt_class() _axHeaderElementSwiftKeys];
  objc_initWeak(&location, self);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(VideosUI_CanonicalBannerInfoViewAccessibility *)self safeSwiftArrayForKey:@"buttonViews"];
  v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v15)
  {
    v14 = *v27;
    v3 = *MEMORY[0x29EDC7F80];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v25 = 0;
      objc_opt_class();
      v5 = __UIAccessibilityCastAsClass();
      if (v25 == 1)
      {
LABEL_23:
        abort();
      }

      if (!v5)
      {
        break;
      }

      v17 = v5;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = _axHeaderElementSwiftKeys;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
      if (v7)
      {
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            v25 = 0;
            objc_opt_class();
            v11 = [(VideosUI_CanonicalBannerInfoViewAccessibility *)self safeSwiftValueForKey:v10];
            v12 = __UIAccessibilityCastAsClass();

            if (v25 == 1)
            {
              goto LABEL_23;
            }

            if (v12 && ([v12 isAccessibilityElement] & 1) != 0)
            {
              [v12 setAccessibilityTraits:{v3 | objc_msgSend(v12, "accessibilityTraits")}];
            }

            else
            {

              v12 = 0;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v21 objects:v32 count:16];
        }

        while (v7);
      }

      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __91__VideosUI_CanonicalBannerInfoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v18[3] = &unk_29F31C270;
      objc_copyWeak(&v20, &location);
      v19 = v6;
      [v17 _setAccessibilityHeaderElementsBlock:v18];

      objc_destroyWeak(&v20);
      if (++v4 == v15)
      {
        v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalBannerInfoViewAccessibility;
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end