@interface PKAddPaymentPassDevicePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKAddPaymentPassDevicePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKAddPaymentPassDevicePickerViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"UITableViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKAddPaymentPassDevicePickerViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = PKAddPaymentPassDevicePickerViewControllerAccessibility;
  [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        accessibilityTraits = [v10 accessibilityTraits];
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 3221225472;
        v12[2] = __101__PKAddPaymentPassDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v12[3] = &__block_descriptor_40_e5_Q8__0l;
        v12[4] = accessibilityTraits;
        [v10 _setAccessibilityTraitsBlock:v12];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PKAddPaymentPassDevicePickerViewControllerAccessibility;
  v4 = [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)&v8 tableView:view cellForRowAtIndexPath:path];
  accessibilityTraits = [v4 accessibilityTraits];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __91__PKAddPaymentPassDevicePickerViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke;
  v7[3] = &__block_descriptor_40_e5_Q8__0l;
  v7[4] = accessibilityTraits;
  [v4 _setAccessibilityTraitsBlock:v7];

  return v4;
}

@end