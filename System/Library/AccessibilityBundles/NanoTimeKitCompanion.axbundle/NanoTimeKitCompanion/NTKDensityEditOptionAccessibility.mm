@interface NTKDensityEditOptionAccessibility
- (id)_accessibilityEditOptionDescription;
@end

@implementation NTKDensityEditOptionAccessibility

- (id)_accessibilityEditOptionDescription
{
  v2 = [(NTKDensityEditOptionAccessibility *)self safeUnsignedIntegerForKey:@"density"];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(off_205A8[v2]);
  }

  return v3;
}

@end