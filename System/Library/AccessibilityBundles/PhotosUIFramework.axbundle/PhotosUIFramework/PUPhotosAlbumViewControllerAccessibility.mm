@interface PUPhotosAlbumViewControllerAccessibility
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUPhotosAlbumViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUPhotosAlbumViewControllerAccessibility;
  [(PUPhotosAlbumViewControllerAccessibility *)&v3 viewDidAppear:appear];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end