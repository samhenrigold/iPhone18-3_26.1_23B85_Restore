@interface FailureBarViewAccessibility
- (id)accessibilityLabel;
- (void)setFailureCount:(int)count;
@end

@implementation FailureBarViewAccessibility

- (void)setFailureCount:(int)count
{
  v6.receiver = self;
  v6.super_class = FailureBarViewAccessibility;
  [(FailureBarViewAccessibility *)&v6 setFailureCount:*&count];
  v4 = [(FailureBarViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], accessibilityLabel);
}

- (id)accessibilityLabel
{
  v2 = [(FailureBarViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end