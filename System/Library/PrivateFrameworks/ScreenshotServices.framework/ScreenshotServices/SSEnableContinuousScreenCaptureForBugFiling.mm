@interface SSEnableContinuousScreenCaptureForBugFiling
@end

@implementation SSEnableContinuousScreenCaptureForBugFiling

void *___SSEnableContinuousScreenCaptureForBugFiling_block_invoke()
{
  result = _SSUserDefaultsBooleanForKeyWithNODefault(@"com.apple.ScreenshotServices.enableContinuousScreenCapture_2");
  _SSEnableContinuousScreenCaptureForBugFiling___SSEnableContinuousScreenCaptureForBugFiling = result;
  return result;
}

@end