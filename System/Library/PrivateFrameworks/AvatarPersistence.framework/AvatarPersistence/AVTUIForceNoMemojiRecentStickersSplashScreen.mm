@interface AVTUIForceNoMemojiRecentStickersSplashScreen
@end

@implementation AVTUIForceNoMemojiRecentStickersSplashScreen

void *__AVTUIForceNoMemojiRecentStickersSplashScreen_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesForceNoMemojiStickerRecentsSplashScreen", 0);
  AVTUIForceNoMemojiRecentStickersSplashScreen_once_enabled = result;
  return result;
}

@end