@interface AXSProcessIsSiri
@end

@implementation AXSProcessIsSiri

void *___AXSProcessIsSiri_block_invoke()
{
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  result = [cachedAppID_CachedAppID isEqualToString:@"com.apple.siri"];
  if (result)
  {
    _AXSProcessIsSiri__AXSProcessIsSiri = 1;
  }

  return result;
}

@end