@interface AVTUIHasDisplayedAnimojiSplashScreen
@end

@implementation AVTUIHasDisplayedAnimojiSplashScreen

void *__AVTUIHasDisplayedAnimojiSplashScreen_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarHasDisplayedAnimojiSplashScreen", 0);
  AVTUIHasDisplayedAnimojiSplashScreen_once_enabled = result;
  return result;
}

@end