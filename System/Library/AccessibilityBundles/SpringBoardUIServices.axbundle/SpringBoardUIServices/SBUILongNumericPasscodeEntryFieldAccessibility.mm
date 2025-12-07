@interface SBUILongNumericPasscodeEntryFieldAccessibility
- (void)setShowsOkButton:(BOOL)button;
@end

@implementation SBUILongNumericPasscodeEntryFieldAccessibility

- (void)setShowsOkButton:(BOOL)button
{
  v3.receiver = self;
  v3.super_class = SBUILongNumericPasscodeEntryFieldAccessibility;
  [(SBUILongNumericPasscodeEntryFieldAccessibility *)&v3 setShowsOkButton:button];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end