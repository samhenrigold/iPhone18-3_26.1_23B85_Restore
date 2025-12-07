@interface UIPrinterTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIPrinterTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIPrinterTableViewCell" hasInstanceMethod:@"printerSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIPrinterTableViewCell" hasInstanceMethod:@"printerState" withFullSignature:{"i", 0}];
}

- (id)accessibilityValue
{
  if ([(UIPrinterTableViewCellAccessibility *)self safeIntForKey:@"printerState"]- 1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = UIKitAccessibilityLocalizedString();
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIPrinterTableViewCellAccessibility;
  accessibilityTraits = [(UIPrinterTableViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(UIPrinterTableViewCellAccessibility *)self safeBoolForKey:@"printerSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end