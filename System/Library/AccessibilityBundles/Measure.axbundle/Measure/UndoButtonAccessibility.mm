@interface UndoButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)undoFrom:(id)from;
@end

@implementation UndoButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.UndoButton" hasInstanceMethod:@"undoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.UndoButton" hasInstanceMethod:@"undoFrom:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(UndoButtonAccessibility *)self safeValueForKey:@"undoButton"];
  accessibilityTraits = [v2 accessibilityTraits];
  v4 = *MEMORY[0x29EDC7F70] | accessibilityTraits;
  v5 = *MEMORY[0x29EDC7FC8];

  return v4 | v5;
}

- (void)undoFrom:(id)from
{
  fromCopy = from;
  v5 = AXMeasureAccessibilityStateObserver();
  axHasConfirmedRectangle = [v5 axHasConfirmedRectangle];

  v9.receiver = self;
  v9.super_class = UndoButtonAccessibility;
  [(UndoButtonAccessibility *)&v9 undoFrom:fromCopy];

  v7 = accessibilityLocalizedString(@"DID_UNDO_LAST_POINT");
  v8 = accessibilityLocalizedString(@"DID_UNDO_POINT");
  AXMeasureAnnounceUpdatedMeasurement(v7, v8, axHasConfirmedRectangle);
}

@end