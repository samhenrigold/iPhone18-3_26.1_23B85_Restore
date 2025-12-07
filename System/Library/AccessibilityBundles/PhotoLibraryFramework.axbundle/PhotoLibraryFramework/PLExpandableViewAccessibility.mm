@interface PLExpandableViewAccessibility
- (void)setState:(int)state withDuration:(double)duration;
@end

@implementation PLExpandableViewAccessibility

- (void)setState:(int)state withDuration:(double)duration
{
  v4.receiver = self;
  v4.super_class = PLExpandableViewAccessibility;
  [(PLExpandableViewAccessibility *)&v4 setState:*&state withDuration:duration];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end