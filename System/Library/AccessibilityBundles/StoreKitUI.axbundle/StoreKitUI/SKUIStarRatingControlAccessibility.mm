@interface SKUIStarRatingControlAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SKUIStarRatingControlAccessibility

- (void)accessibilityDecrement
{
  v3 = [(SKUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  integerValue = [v3 integerValue];

  [(SKUIStarRatingControlAccessibility *)self _axSetRating:integerValue - 1];
}

- (void)accessibilityIncrement
{
  v3 = [(SKUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  integerValue = [v3 integerValue];

  [(SKUIStarRatingControlAccessibility *)self _axSetRating:integerValue + 1];
}

void __51__SKUIStarRatingControlAccessibility__axSetRating___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserRating:*(a1 + 40)];
  objc_opt_class();
  v1 = __UIAccessibilityCastAsClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(SKUIStarRatingControlAccessibility *)self safeValueForKey:@"userRating"];
  [v2 integerValue];
  v3 = UIAXStarRatingStringForRating();

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = -1.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end