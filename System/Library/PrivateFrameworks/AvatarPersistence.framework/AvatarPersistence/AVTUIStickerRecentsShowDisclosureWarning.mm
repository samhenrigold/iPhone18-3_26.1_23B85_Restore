@interface AVTUIStickerRecentsShowDisclosureWarning
@end

@implementation AVTUIStickerRecentsShowDisclosureWarning

void *__AVTUIStickerRecentsShowDisclosureWarning_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesStickerRecentsDisclosureWarning", 0);
  AVTUIStickerRecentsShowDisclosureWarning_once_enabled = result;
  return result;
}

@end