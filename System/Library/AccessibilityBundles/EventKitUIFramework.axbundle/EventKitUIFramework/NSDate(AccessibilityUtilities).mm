@interface NSDate(AccessibilityUtilities)
- (id)_accessibilityTimeString;
@end

@implementation NSDate(AccessibilityUtilities)

- (id)_accessibilityTimeString
{
  v1 = MEMORY[0x29EDBD7E8];
  v2 = AXDateStringForFormat();
  v3 = [v1 axAttributedStringWithString:v2];

  [v3 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];

  return v3;
}

@end