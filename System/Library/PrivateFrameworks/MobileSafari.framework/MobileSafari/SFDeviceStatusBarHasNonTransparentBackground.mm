@interface SFDeviceStatusBarHasNonTransparentBackground
@end

@implementation SFDeviceStatusBarHasNonTransparentBackground

void ___SFDeviceStatusBarHasNonTransparentBackground_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_SFDeviceHasHomeButton::onceToken != -1)
  {
    _SFDeviceHasHomeButton_cold_1();
  }

  if (_SFDeviceHasHomeButton::hasHomeButton == 1)
  {
    if (_SFDeviceIsPad::onceToken != -1)
    {
      _SFSizeClassForWidth_cold_1();
    }

    v2 = _SFDeviceIsPad::isPad ^ 1;
  }

  else
  {
    v2 = 0;
  }

  _SFDeviceStatusBarHasNonTransparentBackground::canHaveBackground = v2 & 1;
}

@end