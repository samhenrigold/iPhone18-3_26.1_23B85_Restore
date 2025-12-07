@interface AVTUIShowPrereleaseStickerPack
@end

@implementation AVTUIShowPrereleaseStickerPack

void *__AVTUIShowPrereleaseStickerPack_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesShowPrereleaseStickerPack", 0);
  AVTUIShowPrereleaseStickerPack_once_enabled = result;
  return result;
}

@end