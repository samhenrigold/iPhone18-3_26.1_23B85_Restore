@interface UIPopoverShapeLayerChromeView
@end

@implementation UIPopoverShapeLayerChromeView

void __57___UIPopoverShapeLayerChromeView__disableGlassForProcess__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  if (isEqualToString)
  {
    _MergedGlobals_5_20 = 1;
  }
}

@end