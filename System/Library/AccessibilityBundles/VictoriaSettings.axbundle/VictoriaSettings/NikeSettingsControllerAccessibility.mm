@interface NikeSettingsControllerAccessibility
- (void)dismissModalViewControllerAnimated:(BOOL)animated;
- (void)showPowerSongPicker:(id)picker;
@end

@implementation NikeSettingsControllerAccessibility

- (void)dismissModalViewControllerAnimated:(BOOL)animated
{
  v3.receiver = self;
  v3.super_class = NikeSettingsControllerAccessibility;
  [(NikeSettingsControllerAccessibility *)&v3 dismissModalViewControllerAnimated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)showPowerSongPicker:(id)picker
{
  v3.receiver = self;
  v3.super_class = NikeSettingsControllerAccessibility;
  [(NikeSettingsControllerAccessibility *)&v3 showPowerSongPicker:picker];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end