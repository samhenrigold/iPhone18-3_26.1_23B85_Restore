@interface SRCompactTextRequestViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SRCompactTextRequestViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SRCompactTextRequestViewControllerAccessibility;
  [(SRCompactTextRequestViewControllerAccessibility *)&v7 viewWillAppear:appear];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(SRCompactTextRequestViewControllerAccessibility *)self safeValueForKey:@"_textRequestView"];
  v6 = [v5 safeValueForKey:@"_textField"];
  UIAccessibilityPostNotification(v4, v6);
}

@end