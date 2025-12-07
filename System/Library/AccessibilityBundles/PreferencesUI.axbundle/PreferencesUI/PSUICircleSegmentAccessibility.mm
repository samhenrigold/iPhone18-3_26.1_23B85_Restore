@interface PSUICircleSegmentAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PSUICircleSegmentAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PSUICircleSegmentAccessibility;
  [(PSUICircleSegmentAccessibility *)&v3 accessibilityTraits];
  return _AXTraitsRemoveTrait();
}

@end