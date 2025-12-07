@interface MUExpandableHoursViewAccessibility
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated;
@end

@implementation MUExpandableHoursViewAccessibility

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = MUExpandableHoursViewAccessibility;
  [(MUExpandableHoursViewAccessibility *)&v4 _setExpanded:expanded animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end