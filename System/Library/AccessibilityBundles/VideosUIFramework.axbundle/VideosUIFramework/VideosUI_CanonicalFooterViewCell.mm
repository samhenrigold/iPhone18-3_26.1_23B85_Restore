@interface VideosUI_CanonicalFooterViewCell
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalFooterViewCell

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUIFramework.CanonicalFooterViewCell" hasSwiftField:@"sectionViews" withSwiftType:"Optional<Array<CanonicalFooterSectionView>>"];
  [validationsCopy validateClass:@"CanonicalFooterSectionView"];
  [validationsCopy validateClass:@"VideosUIFramework.CanonicalFooterSectionView" hasSwiftField:@"headerView" withSwiftType:"Optional<VUILabel>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = VideosUI_CanonicalFooterViewCell;
  [(VideosUI_CanonicalFooterViewCell *)&v15 _accessibilityLoadAccessibilityInformation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(VideosUI_CanonicalFooterViewCell *)self safeSwiftArrayForKey:@"sectionViews", 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = *MEMORY[0x29EDC7FD0];
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) safeSwiftValueForKey:@"headerView"];
        [v10 setAccessibilityTraits:v8 | v7];

        ++v9;
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalFooterViewCell;
  [(VideosUI_CanonicalFooterViewCell *)&v3 layoutSubviews];
  [(VideosUI_CanonicalFooterViewCell *)self _accessibilityLoadAccessibilityInformation];
}

@end