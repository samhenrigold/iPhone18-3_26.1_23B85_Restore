@interface SessionHeartRateViewAccessibility
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityDidUpdateHeartRate:(BOOL)rate lastKnownHR:(id)r;
@end

@implementation SessionHeartRateViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SessionHeartRateViewAccessibility;
  [(SessionHeartRateViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"waiting.for.heart.rate.data");
  [(SessionHeartRateViewAccessibility *)self setAccessibilityLabel:v3];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionHeartRateViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SessionHeartRateViewAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityDidUpdateHeartRate:(BOOL)rate lastKnownHR:(id)r
{
  rateCopy = rate;
  v15[2] = *MEMORY[0x29EDCA608];
  rCopy = r;
  v14.receiver = self;
  v14.super_class = SessionHeartRateViewAccessibility;
  [(SessionHeartRateViewAccessibility *)&v14 accessibilityDidUpdateHeartRate:rateCopy lastKnownHR:rCopy];
  if (!rCopy)
  {
    v10 = accessibilityLocalizedString(@"waiting.for.heart.rate.data");
    goto LABEL_5;
  }

  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"heartrate.format");
  [rCopy doubleValue];
  v10 = [v7 stringWithFormat:v8, v9];

  if (!rateCopy)
  {
LABEL_5:
    [(SessionHeartRateViewAccessibility *)self setAccessibilityLabel:v10];
    goto LABEL_6;
  }

  v11 = accessibilityLocalizedString(@"last.known.heart.rate");
  v15[0] = v11;
  v15[1] = v10;
  v12 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:2];
  v13 = AXLabelForElements();

  [(SessionHeartRateViewAccessibility *)self setAccessibilityLabel:v13];
LABEL_6:
}

@end