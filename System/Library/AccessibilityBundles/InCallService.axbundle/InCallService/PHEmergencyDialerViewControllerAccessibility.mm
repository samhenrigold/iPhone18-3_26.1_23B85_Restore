@interface PHEmergencyDialerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)medicalIDButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PHEmergencyDialerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHEmergencyDialerViewController" hasInstanceVariable:@"_dialerView" withType:"PHEmergencyHandsetDialerView"];
  [validationsCopy validateClass:@"PHEmergencyHandsetDialerView" isKindOfClass:@"PHAbstractDialerView"];
  [validationsCopy validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHEmergencyDialerViewController" hasInstanceMethod:@"medicalIDButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = PHEmergencyDialerViewControllerAccessibility;
  [(PHEmergencyDialerViewControllerAccessibility *)&v9 viewDidDisappear:disappear];
  v4 = [(PHEmergencyDialerViewControllerAccessibility *)self safeValueForKey:@"view"];
  window = [v4 window];
  [window _setAccessibilityIsMainWindow:0];

  v6 = [(PHEmergencyDialerViewControllerAccessibility *)self safeValueForKey:@"view"];
  window2 = [v6 window];
  [window2 setAccessibilityViewIsModal:0];

  v8 = MEMORY[0x29EDC8008];
  [*MEMORY[0x29EDC8008] _accessibilitySetAllowsNotificationsDuringSuspension:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  [*v8 _accessibilitySetAllowsNotificationsDuringSuspension:0];
}

- (void)medicalIDButtonTapped:(id)tapped
{
  v4.receiver = self;
  v4.super_class = PHEmergencyDialerViewControllerAccessibility;
  [(PHEmergencyDialerViewControllerAccessibility *)&v4 medicalIDButtonTapped:tapped];
  v3 = MEMORY[0x29EDC8008];
  [*MEMORY[0x29EDC8008] _accessibilitySetAllowsNotificationsDuringSuspension:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  [*v3 _accessibilitySetAllowsNotificationsDuringSuspension:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PHEmergencyDialerViewControllerAccessibility;
  [(PHEmergencyDialerViewControllerAccessibility *)&v12 viewDidAppear:appear];
  v4 = [(PHEmergencyDialerViewControllerAccessibility *)self safeValueForKey:@"_dialerView"];
  v5 = [v4 safeValueForKey:@"callButton"];
  v6 = accessibilityLocalizedString(@"call.text");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PHEmergencyDialerViewControllerAccessibility *)self safeValueForKey:@"view"];
  window = [v7 window];
  [window _setAccessibilityIsMainWindow:1];

  v9 = [(PHEmergencyDialerViewControllerAccessibility *)self safeValueForKey:@"view"];
  window2 = [v9 window];
  [window2 setAccessibilityViewIsModal:1];

  v11 = MEMORY[0x29EDC8008];
  [*MEMORY[0x29EDC8008] _accessibilitySetAllowsNotificationsDuringSuspension:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  [*v11 _accessibilitySetAllowsNotificationsDuringSuspension:0];
}

@end