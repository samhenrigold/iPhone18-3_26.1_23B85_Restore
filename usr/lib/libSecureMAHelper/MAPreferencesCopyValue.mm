@interface MAPreferencesCopyValue
@end

@implementation MAPreferencesCopyValue

uint64_t ___MAPreferencesCopyValue_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFPreferencesCopyAppValue(*(a1 + 32), @"com.apple.MobileAsset");

  return MEMORY[0x2A1C71028]();
}

@end