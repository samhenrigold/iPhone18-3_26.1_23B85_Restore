@interface BuddyFinishedControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyFinishedControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyFinishedController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BuddyFinishedController" hasProperty:@"instructionalLabel" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7[1] = *MEMORY[0x29EDCA608];
  v6.receiver = self;
  v6.super_class = BuddyFinishedControllerAccessibility;
  [(BuddyFinishedControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(BuddyFinishedControllerAccessibility *)self safeValueForKey:@"instructionalLabel"];
  v4 = v3;
  if (v3)
  {
    [v3 setIsAccessibilityElement:1];
    [v4 setAccessibilityRespondsToUserInteraction:1];
    v7[0] = *MEMORY[0x29EDBD610];
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
    [v4 _iosAccessibilitySetValue:v5 forAttribute:12015];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BuddyFinishedControllerAccessibility;
  [(BuddyFinishedControllerAccessibility *)&v4 viewDidAppear:appear];
  [(BuddyFinishedControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end