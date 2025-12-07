@interface AccessibilityNodeAccessibility
@end

@implementation AccessibilityNodeAccessibility

uint64_t __92__AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI__accessibilityExpandedStatus__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) accessibilityCustomAttribute:@"AXExpanded"];

  return MEMORY[0x2A1C71028]();
}

@end