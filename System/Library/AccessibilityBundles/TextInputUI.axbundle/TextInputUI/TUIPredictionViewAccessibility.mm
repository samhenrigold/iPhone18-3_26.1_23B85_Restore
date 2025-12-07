@interface TUIPredictionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)_accessibilityScannerGroupTraits;
- (void)_accessibilitySendCandidateNotificationIfNecessary:(BOOL)necessary;
- (void)_reloadCellsAnimated:(BOOL)animated;
- (void)configurePredictionCell:(id)cell forCandidate:(id)candidate animated:(BOOL)animated;
@end

@implementation TUIPredictionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUIPredictionView" hasInstanceMethod:@"_reloadCellsAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TUIPredictionView" hasInstanceMethod:@"configurePredictionCell:forCandidate:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v3.receiver = self;
  v3.super_class = TUIPredictionViewAccessibility;
  return [(TUIPredictionViewAccessibility *)&v3 _accessibilityScannerGroupTraits]| 2;
}

- (void)_accessibilitySendCandidateNotificationIfNecessary:(BOOL)necessary
{
  autocorrectionList = [(TUIPredictionViewAccessibility *)self autocorrectionList];
  autocorrection = [autocorrectionList autocorrection];

  if ([autocorrection isContinuousPathConversion])
  {
    label = [autocorrection label];
    if ([label length] && (!objc_msgSend(_accessibilitySendCandidateNotificationIfNecessary__PreviousLabel, "isEqualToString:", label) || CFAbsoluteTimeGetCurrent() - *&_accessibilitySendCandidateNotificationIfNecessary__PreviousSentNotificationTime > 1.0))
    {
      v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:label];
      [v6 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDC7398]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], v6);
      objc_storeStrong(&_accessibilitySendCandidateNotificationIfNecessary__PreviousLabel, label);
      _accessibilitySendCandidateNotificationIfNecessary__PreviousSentNotificationTime = CFAbsoluteTimeGetCurrent();
    }
  }

  else if (!necessary)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }
}

- (void)_reloadCellsAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = TUIPredictionViewAccessibility;
  [(TUIPredictionViewAccessibility *)&v4 _reloadCellsAnimated:animated];
  [(TUIPredictionViewAccessibility *)self _accessibilitySendCandidateNotificationIfNecessary:1];
}

- (void)configurePredictionCell:(id)cell forCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = TUIPredictionViewAccessibility;
  cellCopy = cell;
  [(TUIPredictionViewAccessibility *)&v9 configurePredictionCell:cellCopy forCandidate:candidate animated:animatedCopy];
  LODWORD(animatedCopy) = [cellCopy highlighted];

  if (animatedCopy)
  {
    [(TUIPredictionViewAccessibility *)self _accessibilitySendCandidateNotificationIfNecessary:0];
  }
}

@end