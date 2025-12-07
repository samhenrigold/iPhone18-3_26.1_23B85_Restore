@interface UISDisplaySingleRectShape
@end

@implementation UISDisplaySingleRectShape

void __67__UISDisplaySingleRectShape_SpringBoard__sb_thisDeviceDisplayShape__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) sb_displayShapeForScreenType:SBHScreenTypeForCurrentDevice()];
  v3 = sb_thisDeviceDisplayShape_sThisDeviceScreenType;
  sb_thisDeviceDisplayShape_sThisDeviceScreenType = v2;
}

@end