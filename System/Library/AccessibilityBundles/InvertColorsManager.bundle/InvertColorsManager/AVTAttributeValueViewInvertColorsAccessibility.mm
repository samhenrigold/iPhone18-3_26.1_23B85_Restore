@interface AVTAttributeValueViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)cleanupAfterTransition;
- (void)updateSelectedState:(BOOL)state animated:(BOOL)animated;
@end

@implementation AVTAttributeValueViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(AVTAttributeValueViewInvertColorsAccessibility *)self safeValueForKey:@"imageLayer"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(AVTAttributeValueViewInvertColorsAccessibility *)self safeValueForKey:@"transitionImageLayer"];
  v6 = __UIAccessibilityCastAsClass();

  [AXInvertColorsAppHelper toggleInvertColors:v4];
  [AXInvertColorsAppHelper toggleInvertColors:v6];
}

- (void)updateSelectedState:(BOOL)state animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = AVTAttributeValueViewInvertColorsAccessibility;
  [(AVTAttributeValueViewInvertColorsAccessibility *)&v5 updateSelectedState:state animated:animated];
  [(AVTAttributeValueViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)cleanupAfterTransition
{
  v3.receiver = self;
  v3.super_class = AVTAttributeValueViewInvertColorsAccessibility;
  [(AVTAttributeValueViewInvertColorsAccessibility *)&v3 cleanupAfterTransition];
  [(AVTAttributeValueViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end