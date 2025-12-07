@interface VTUISiriDataSharingOptInViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VTUISiriDataSharingOptInViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VTUISiriDataSharingOptInViewControllerAccessibility;
  [(VTUISiriDataSharingOptInViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUISiriDataSharingOptInViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VTUISiriDataSharingOptInViewControllerAccessibility;
  [(VTUISiriDataSharingOptInViewControllerAccessibility *)&v5 viewWillAppear:appear];
  v4 = [(VTUISiriDataSharingOptInViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityViewIsModal:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VTUISiriDataSharingOptInViewControllerAccessibility;
  [(VTUISiriDataSharingOptInViewControllerAccessibility *)&v5 viewWillAppear:disappear];
  v4 = [(VTUISiriDataSharingOptInViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityViewIsModal:0];
}

@end