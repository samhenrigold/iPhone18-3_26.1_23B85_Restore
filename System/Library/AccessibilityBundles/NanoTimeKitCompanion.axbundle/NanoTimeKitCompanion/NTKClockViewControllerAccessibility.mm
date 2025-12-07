@interface NTKClockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_endFaceLibraryControllerPresentation;
- (void)_showLibraryViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)celebrationViewControllerStartedAnimation:(id)animation;
@end

@implementation NTKClockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"_showLibraryViewControllerAnimated: withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"_endFaceLibraryControllerPresentation" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKComplicationControllerCache"];
  [validationsCopy validateClass:@"NTKComplicationControllerCache" hasClassMethod:@"sharedCache" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"celebrationViewControllerStartedAnimation:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NCEClockCelebrationViewController"];
  [validationsCopy validateClass:@"NCEClockCelebrationViewController" hasProperty:@"currentCelebration" withType:"@"];
  [validationsCopy validateClass:@"NCEFireVector"];
  [validationsCopy validateClass:@"NCEFireVector" hasProperty:@"celebration" withType:"@"];
  [validationsCopy validateClass:@"NCECelebration"];
  [validationsCopy validateClass:@"NCECelebration" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NTKClockViewControllerAccessibility;
  [(NTKClockViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedCache"];
  [v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_showLibraryViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  v4.receiver = self;
  v4.super_class = NTKClockViewControllerAccessibility;
  [(NTKClockViewControllerAccessibility *)&v4 _showLibraryViewControllerAnimated:animated withCompletion:completion];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)_endFaceLibraryControllerPresentation
{
  v2.receiver = self;
  v2.super_class = NTKClockViewControllerAccessibility;
  [(NTKClockViewControllerAccessibility *)&v2 _endFaceLibraryControllerPresentation];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)celebrationViewControllerStartedAnimation:(id)animation
{
  v9.receiver = self;
  v9.super_class = NTKClockViewControllerAccessibility;
  animationCopy = animation;
  [(NTKClockViewControllerAccessibility *)&v9 celebrationViewControllerStartedAnimation:animationCopy];
  v4 = [animationCopy safeValueForKeyPath:{@"currentCelebration.celebration", v9.receiver, v9.super_class}];

  v5 = [v4 safeStringForKey:@"name"];
  if ([v5 isEqualToString:@"com.apple.watch.celebrations.fireworks"])
  {
    v6 = @"celebration.fireworks";
  }

  else if ([v5 isEqualToString:@"com.apple.watch.celebrations.balloons"])
  {
    v6 = @"celebration.balloons";
  }

  else
  {
    if (![v5 isEqualToString:@"com.apple.watch.celebrations.sparkles"])
    {
      goto LABEL_9;
    }

    v6 = @"celebration.sparkles";
  }

  v7 = accessibilityLocalizedString(v6);
  if (v7)
  {
    v8 = v7;
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v7);
  }

LABEL_9:
}

@end