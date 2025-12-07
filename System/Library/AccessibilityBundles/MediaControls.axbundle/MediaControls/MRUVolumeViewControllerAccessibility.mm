@interface MRUVolumeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateEnvironmentSliderValueAnimated:(BOOL)animated;
- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)animated;
@end

@implementation MRUVolumeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUVolumeView"];
  [validationsCopy validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"updatePrimarySliderVolumeValueAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MRUVolumeViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MRUVolumeView" hasInstanceMethod:@"primarySlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUContinuousSliderView" isKindOfClass:@"CCUIContinuousSliderView"];
  [validationsCopy validateClass:@"CCUIContinuousSliderView" isKindOfClass:@"CCUIBaseSliderView"];
  [validationsCopy validateClass:@"CCUIBaseSliderView" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"MRUVolumeView" hasInstanceMethod:@"environmentSlider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"updateEnvironmentSliderValueAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = MRUVolumeViewControllerAccessibility;
  [(MRUVolumeViewControllerAccessibility *)&v7 updatePrimarySliderVolumeValueAnimated:animated];
  v4 = [(MRUVolumeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v5 = [v4 safeUIViewForKey:@"primarySlider"];

  if (objc_opt_respondsToSelector())
  {
    [v5 safeFloatForKey:@"value"];
    [v5 _axSetVolumeValue:v6];
  }
}

- (void)updateEnvironmentSliderValueAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = MRUVolumeViewControllerAccessibility;
  [(MRUVolumeViewControllerAccessibility *)&v7 updateEnvironmentSliderValueAnimated:animated];
  v4 = [(MRUVolumeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v5 = [v4 safeUIViewForKey:@"environmentSlider"];

  if (objc_opt_respondsToSelector())
  {
    [v5 safeFloatForKey:@"value"];
    [v5 _axSetVolumeValue:v6];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MRUVolumeViewControllerAccessibility;
  [(MRUVolumeViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MRUVolumeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 safeUIViewForKey:@"environmentSlider"];

  v5 = accessibilityYodelLocalizedString(@"amplification.ax.label");
  [v4 setAccessibilityLabel:v5];
}

@end