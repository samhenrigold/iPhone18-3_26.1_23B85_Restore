@interface AVTUIStickersShowDisclosureWarning
@end

@implementation AVTUIStickersShowDisclosureWarning

void *__AVTUIStickersShowDisclosureWarning_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesStickersDisclosureWarning", 0);
  AVTUIStickersShowDisclosureWarning_once_enabled = result;
  return result;
}

@end