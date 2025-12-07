@interface UITextViewAccessibility__WritingToolsUIService__UIKit
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation UITextViewAccessibility__WritingToolsUIService__UIKit

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)selfCopy _accessibilitySelectedTextRange];
  if (!v6)
  {
    _UIAccessibilityBlockPostingOfNotification();
    [(UITextViewAccessibility__WritingToolsUIService__UIKit *)selfCopy select:selfCopy];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v7.receiver = selfCopy;
  v7.super_class = UITextViewAccessibility__WritingToolsUIService__UIKit;
  [(UITextViewAccessibility__WritingToolsUIService__UIKit *)&v7 _accessibilitySetSelectedTextRange:location, length];
}

@end