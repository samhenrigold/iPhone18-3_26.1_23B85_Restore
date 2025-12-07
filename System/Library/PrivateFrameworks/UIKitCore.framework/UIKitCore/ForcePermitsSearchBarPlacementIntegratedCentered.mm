@interface ForcePermitsSearchBarPlacementIntegratedCentered
@end

@implementation ForcePermitsSearchBarPlacementIntegratedCentered

void ___ForcePermitsSearchBarPlacementIntegratedCentered_block_invoke()
{
  if ((_MergedGlobals_123 & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    if (objc_msgSend_isEqualToString_(v0))
    {
      _MergedGlobals_123 = 1;
    }
  }
}

@end