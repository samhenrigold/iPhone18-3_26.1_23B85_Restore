@interface MailTrackingProtectionOnboardingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureCell:(id)cell viewModel:(id)model;
@end

@implementation MailTrackingProtectionOnboardingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailTrackingProtectionOnboardingViewController" hasInstanceMethod:@"_configureCell:viewModel:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"MailTrackingProtectionOnboardingViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = MailTrackingProtectionOnboardingViewControllerAccessibility;
  [(MailTrackingProtectionOnboardingViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  objc_opt_class();
  v3 = [(MailTrackingProtectionOnboardingViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  visibleCells = [v4 visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v10 + 1) + 8 * i) _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_0];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_configureCell:(id)cell viewModel:(id)model
{
  v6.receiver = self;
  v6.super_class = MailTrackingProtectionOnboardingViewControllerAccessibility;
  cellCopy = cell;
  [(MailTrackingProtectionOnboardingViewControllerAccessibility *)&v6 _configureCell:cellCopy viewModel:model];
  [cellCopy _setAccessibilityAdditionalTraitsBlock:{&__block_literal_global_300, v6.receiver, v6.super_class}];
}

@end