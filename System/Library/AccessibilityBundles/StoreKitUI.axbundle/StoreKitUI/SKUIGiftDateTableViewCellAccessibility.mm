@interface SKUIGiftDateTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIGiftDateTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIGiftDateTableViewCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIGiftDateTableViewCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIGiftDateTableViewCell" hasInstanceVariable:@"_datePicker" withType:"UIDatePicker"];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SKUIGiftDateTableViewCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityValue
{
  v2 = [(SKUIGiftDateTableViewCellAccessibility *)self safeValueForKey:@"_datePicker"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = [(SKUIGiftDateTableViewCellAccessibility *)self safeValueForKey:@"_datePicker"];
  if ([v3 isDescendantOfView:self])
  {
    v8[0] = v3;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUIGiftDateTableViewCellAccessibility;
    _accessibilitySupplementaryFooterViews = [(SKUIGiftDateTableViewCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  }

  v5 = _accessibilitySupplementaryFooterViews;

  return v5;
}

@end