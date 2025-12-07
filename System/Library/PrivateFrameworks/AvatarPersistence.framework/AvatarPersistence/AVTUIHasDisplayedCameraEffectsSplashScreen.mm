@interface AVTUIHasDisplayedCameraEffectsSplashScreen
@end

@implementation AVTUIHasDisplayedCameraEffectsSplashScreen

void *__AVTUIHasDisplayedCameraEffectsSplashScreen_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarHasDisplayedCameraEffectsSplashScreen", 0);
  AVTUIHasDisplayedCameraEffectsSplashScreen_once_enabled = result;
  return result;
}

@end