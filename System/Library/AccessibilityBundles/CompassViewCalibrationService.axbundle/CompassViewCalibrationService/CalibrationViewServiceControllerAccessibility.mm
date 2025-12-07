@interface CalibrationViewServiceControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CalibrationViewServiceControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CalibrationViewServiceControllerAccessibility;
  [(CalibrationViewServiceControllerAccessibility *)&v3 viewDidAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end