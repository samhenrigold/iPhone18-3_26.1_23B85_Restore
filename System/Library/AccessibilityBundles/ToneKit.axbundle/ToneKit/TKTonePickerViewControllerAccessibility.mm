@interface TKTonePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateCell:(id)cell;
- (void)_configureTextColorOfLabelInCell:(id)cell shouldTintText:(BOOL)text checked:(BOOL)checked;
@end

@implementation TKTonePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TKTonePickerViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"TKTonePickerViewController" hasInstanceMethod:@"_configureTextColorOfLabelInCell:shouldTintText:checked:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = TKTonePickerViewControllerAccessibility;
  [(TKTonePickerViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v14 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  tableView = [v3 tableView];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleCells = [tableView visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        [(TKTonePickerViewControllerAccessibility *)self _axUpdateCell:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_configureTextColorOfLabelInCell:(id)cell shouldTintText:(BOOL)text checked:(BOOL)checked
{
  checkedCopy = checked;
  textCopy = text;
  v9.receiver = self;
  v9.super_class = TKTonePickerViewControllerAccessibility;
  cellCopy = cell;
  [(TKTonePickerViewControllerAccessibility *)&v9 _configureTextColorOfLabelInCell:cellCopy shouldTintText:textCopy checked:checkedCopy];
  [(TKTonePickerViewControllerAccessibility *)self _axUpdateCell:cellCopy, v9.receiver, v9.super_class];
}

- (void)_axUpdateCell:(id)cell
{
  cellCopy = cell;
  accessibilityTraits = [cellCopy accessibilityTraits];
  imageView = [cellCopy imageView];
  image = [imageView image];

  if (image)
  {
    v6 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v6 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  }

  [cellCopy setAccessibilityTraits:v6];
}

@end