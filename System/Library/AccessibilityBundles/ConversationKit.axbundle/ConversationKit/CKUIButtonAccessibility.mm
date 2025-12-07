@interface CKUIButtonAccessibility
- (void)setHidden:(BOOL)hidden;
@end

@implementation CKUIButtonAccessibility

- (void)setHidden:(BOOL)hidden
{
  v8.receiver = self;
  v8.super_class = CKUIButtonAccessibility;
  [(CKUIButtonAccessibility *)&v8 setHidden:hidden];
  accessibilityIdentification = [(CKUIButtonAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"AXRingButtonIdentification"];

  if (v5)
  {
    v6 = [(CKUIButtonAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v7 = [v6 safeValueForKey:@"_accessibilityClearChildren"];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end