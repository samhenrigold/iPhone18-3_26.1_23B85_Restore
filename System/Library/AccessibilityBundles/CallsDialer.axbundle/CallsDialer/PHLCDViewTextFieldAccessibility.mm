@interface PHLCDViewTextFieldAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityPaste;
@end

@implementation PHLCDViewTextFieldAccessibility

- (id)accessibilityValue
{
  v2 = MEMORY[0x29EDBD7E8];
  v6.receiver = self;
  v6.super_class = PHLCDViewTextFieldAccessibility;
  accessibilityValue = [(PHLCDViewTextFieldAccessibility *)&v6 accessibilityValue];
  v4 = [v2 axAttributedStringWithString:accessibilityValue];

  [v4 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D0]];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v7.receiver = self;
  v7.super_class = PHLCDViewTextFieldAccessibility;
  accessibilityTraits = [(PHLCDViewTextFieldAccessibility *)&v7 accessibilityTraits];
  if ([v3 isEditing])
  {
    v5 = *MEMORY[0x29EDC7528] | *MEMORY[0x29EDC7598];
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)_accessibilityPaste
{
  keyWindow = [MEMORY[0x29EDC7DD0] keyWindow];
  firstResponder = [keyWindow firstResponder];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [firstResponder canPerformAction:sel_paste_ withSender:0])
  {
    [firstResponder paste:0];
  }
}

@end