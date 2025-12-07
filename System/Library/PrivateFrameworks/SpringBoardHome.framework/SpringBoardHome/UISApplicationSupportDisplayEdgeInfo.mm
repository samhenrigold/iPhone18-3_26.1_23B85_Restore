@interface UISApplicationSupportDisplayEdgeInfo
@end

@implementation UISApplicationSupportDisplayEdgeInfo

uint64_t __84__UISApplicationSupportDisplayEdgeInfo_SBHScreenTypes__sb_thisDeviceDisplayEdgeInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) sbh_displayEdgeInfoForScreenType:{SBHScreenTypeForCurrentDevice(a1, a2)}];
  v3 = sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo;
  sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end