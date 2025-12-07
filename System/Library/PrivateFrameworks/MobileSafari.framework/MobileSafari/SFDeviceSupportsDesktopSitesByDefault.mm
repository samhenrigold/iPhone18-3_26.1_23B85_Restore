@interface SFDeviceSupportsDesktopSitesByDefault
@end

@implementation SFDeviceSupportsDesktopSitesByDefault

uint64_t ___SFDeviceSupportsDesktopSitesByDefault_block_invoke(uint64_t a1, uint64_t a2)
{
  result = _SFDeviceIsPad(a1, a2);
  if (result)
  {
    result = MGGetSInt32Answer();
    v4 = result != 28 && (result & 0xFFFFFFFE) != 6;
    _SFDeviceSupportsDesktopSitesByDefault::supportsDesktopSites = v4;
  }

  return result;
}

@end