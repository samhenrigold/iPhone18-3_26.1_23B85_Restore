@interface TUIEmojiSearchInputViewControllerAccessibility
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TUIEmojiSearchInputViewControllerAccessibility

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TUIEmojiSearchInputViewControllerAccessibility;
  [(TUIEmojiSearchInputViewControllerAccessibility *)&v4 viewWillDisappear:disappear];
  v3 = accessibilityLocalizedString(@"emoji.search.hidden");
  UIAccessibilitySpeak();
}

@end