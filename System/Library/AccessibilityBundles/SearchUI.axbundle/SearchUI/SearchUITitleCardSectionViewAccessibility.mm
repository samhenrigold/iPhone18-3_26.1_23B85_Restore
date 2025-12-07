@interface SearchUITitleCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUITitleCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUITitleCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SFTitleCardSection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v16 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SearchUITitleCardSectionViewAccessibility *)self safeArrayForKey:@"subviews", 0, 0];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    v7 = *MEMORY[0x29EDC7F70];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        v5 |= v9;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITitleCardSectionViewAccessibility *)self safeValueForKey:@"section"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end