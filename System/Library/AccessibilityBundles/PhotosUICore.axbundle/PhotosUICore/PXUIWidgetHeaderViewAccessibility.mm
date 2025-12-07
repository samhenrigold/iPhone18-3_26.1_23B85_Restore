@interface PXUIWidgetHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_titleLabelCreateIfNeeded:(BOOL)needed;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXUIWidgetHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIWidgetHeaderView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIWidgetHeaderView" hasInstanceMethod:@"_titleLabelCreateIfNeeded:" withFullSignature:{"@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PXUIWidgetHeaderViewAccessibility;
  [(PXUIWidgetHeaderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXUIWidgetHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

- (id)_titleLabelCreateIfNeeded:(BOOL)needed
{
  v6.receiver = self;
  v6.super_class = PXUIWidgetHeaderViewAccessibility;
  v4 = [(PXUIWidgetHeaderViewAccessibility *)&v6 _titleLabelCreateIfNeeded:needed];
  [(PXUIWidgetHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end