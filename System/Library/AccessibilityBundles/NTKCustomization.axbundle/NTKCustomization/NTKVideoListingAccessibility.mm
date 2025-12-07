@interface NTKVideoListingAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKVideoListingAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKVideoListingAccessibility *)self safeIntegerForKey:@"variant"];
  v3 = accessibilityLocalizedString(*(&AccessibilityClockFaceVideoDescription + v2));
  v4 = v3;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end