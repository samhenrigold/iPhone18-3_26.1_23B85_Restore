@interface VTUIEnrollmentSetupIntroViewControllerOrbAccessibility
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VTUIEnrollmentSetupIntroViewControllerOrbAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewControllerOrbAccessibility;
  [(VTUIEnrollmentSetupIntroViewControllerOrbAccessibility *)&v5 viewWillAppear:appear];
  v4 = [(VTUIEnrollmentSetupIntroViewControllerOrbAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityViewIsModal:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewControllerOrbAccessibility;
  [(VTUIEnrollmentSetupIntroViewControllerOrbAccessibility *)&v5 viewWillAppear:disappear];
  v4 = [(VTUIEnrollmentSetupIntroViewControllerOrbAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityViewIsModal:0];
}

@end