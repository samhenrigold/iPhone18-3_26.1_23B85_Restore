@interface SearchUIInfoCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUIInfoCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIInfoCardSectionView" hasProperty:@"contentView" withType:"@"];
  [validationsCopy validateClass:@"NUIContainerGridView" hasInstanceMethod:@"arrangedSubviewRows" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = SearchUIInfoCardSectionViewAccessibility;
  [(SearchUIInfoCardSectionViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchUIInfoCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v4 = [v3 safeValueForKey:@"arrangedSubviewRows"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = NSClassFromString(&cfstr_Searchuilabel.isa);
        v13 = [v11 _accessibilityDescendantOfType:{v12, v14}];
        [v13 setAccessibilityTraits:v9];

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

@end