@interface HSPCDetectedViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HSPCDetectedViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HSPCDetectedViewControllerAccessibility;
  [(HSPCDetectedViewControllerAccessibility *)&v6 viewWillAppear:appear];
  v3 = MEMORY[0x29EDBD7E8];
  v4 = accessibilityLocalizedString(@"camera.scan.discovered.accessory");
  v5 = [v3 stringWithString:v4];

  [v5 setAttribute:&unk_2A21CF680 forKey:*MEMORY[0x29EDBD860]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
}

@end