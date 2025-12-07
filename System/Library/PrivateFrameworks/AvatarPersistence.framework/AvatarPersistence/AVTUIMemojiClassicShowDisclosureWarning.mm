@interface AVTUIMemojiClassicShowDisclosureWarning
@end

@implementation AVTUIMemojiClassicShowDisclosureWarning

void *__AVTUIMemojiClassicShowDisclosureWarning_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesMemojiClassicDisclosureWarning", 0);
  AVTUIMemojiClassicShowDisclosureWarning_once_enabled = result;
  return result;
}

@end