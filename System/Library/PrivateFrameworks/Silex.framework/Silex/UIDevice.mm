@interface UIDevice
@end

@implementation UIDevice

uint64_t __43__UIDevice_SXAdditions__sx_isSpectreDevice__block_invoke(uint64_t a1, uint64_t a2)
{
  result = MGGetBoolAnswer();
  sx_isSpectreDevice_hasExtendedColorDisplay = result;
  return result;
}

@end