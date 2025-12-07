@interface SFShareAudioViewControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFShareAudioViewControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFShareAudioViewControllerAccessibility;
  [(SFShareAudioViewControllerAccessibility *)&v4 viewWillAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end