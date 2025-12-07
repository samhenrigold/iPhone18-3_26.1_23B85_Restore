@interface VideosUI_MultiPlayerContainerEditOverlayViewAccessibility
- (void)setHidden:(BOOL)hidden;
@end

@implementation VideosUI_MultiPlayerContainerEditOverlayViewAccessibility

- (void)setHidden:(BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = VideosUI_MultiPlayerContainerEditOverlayViewAccessibility;
  [(VideosUI_MultiPlayerContainerEditOverlayViewAccessibility *)&v3 setHidden:hidden];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end