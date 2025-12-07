@interface PUVideoEditOverlayViewControllerAccessibility
- (void)_setState:(int64_t)state forView:(id)view animated:(BOOL)animated;
@end

@implementation PUVideoEditOverlayViewControllerAccessibility

- (void)_setState:(int64_t)state forView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PUVideoEditOverlayViewControllerAccessibility;
  [(PUVideoEditOverlayViewControllerAccessibility *)&v11 _setState:state forView:viewCopy animated:animatedCopy];
  if ((state - 1) <= 4)
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    if ([v9 accessibilityElementIsFocused])
    {
    }

    else
    {
      _axSubjectIndicatorWasFocused = [(PUVideoEditOverlayViewControllerAccessibility *)self _axSubjectIndicatorWasFocused];

      if (_axSubjectIndicatorWasFocused)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], viewCopy);
      }
    }
  }
}

@end