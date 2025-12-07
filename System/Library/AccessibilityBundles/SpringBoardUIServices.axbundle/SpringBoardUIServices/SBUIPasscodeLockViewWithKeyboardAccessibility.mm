@interface SBUIPasscodeLockViewWithKeyboardAccessibility
- (void)updateStatusText:(id)text subtitle:(id)subtitle animated:(BOOL)animated;
@end

@implementation SBUIPasscodeLockViewWithKeyboardAccessibility

- (void)updateStatusText:(id)text subtitle:(id)subtitle animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  subtitleCopy = subtitle;
  v10 = [(SBUIPasscodeLockViewWithKeyboardAccessibility *)self safeValueForKey:@"_statusField"];
  accessibilityLabel = [v10 accessibilityLabel];

  if (([accessibilityLabel isEqualToString:textCopy] & 1) == 0)
  {
    if ([textCopy length])
    {
      server = [MEMORY[0x29EDBDFA8] server];
      isSystemSleeping = [server isSystemSleeping];

      if ((isSystemSleeping & 1) == 0)
      {
        v14 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:textCopy];
        [v14 setAttribute:&unk_2A231C9F8 forKey:*MEMORY[0x29EDBD860]];
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v14);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SBUIPasscodeLockViewWithKeyboardAccessibility;
  [(SBUIPasscodeLockViewWithKeyboardAccessibility *)&v15 updateStatusText:textCopy subtitle:subtitleCopy animated:animatedCopy];
}

@end