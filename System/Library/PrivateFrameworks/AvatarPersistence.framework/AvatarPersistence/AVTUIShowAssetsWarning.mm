@interface AVTUIShowAssetsWarning
@end

@implementation AVTUIShowAssetsWarning

void *__AVTUIShowAssetsWarning_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarUIShowAssetsWarning", 0);
  AVTUIShowAssetsWarning_once_enabled = result;
  return result;
}

@end