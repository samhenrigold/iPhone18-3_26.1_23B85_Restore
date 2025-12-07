@interface AVTUIAlwaysShowSplashScreen
@end

@implementation AVTUIAlwaysShowSplashScreen

void *__AVTUIAlwaysShowSplashScreen_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarAlwaysShowSplashScreen", 0);
  AVTUIAlwaysShowSplashScreen_once_enabled = result;
  return result;
}

@end