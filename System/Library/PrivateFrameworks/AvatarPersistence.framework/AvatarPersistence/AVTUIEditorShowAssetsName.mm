@interface AVTUIEditorShowAssetsName
@end

@implementation AVTUIEditorShowAssetsName

void *__AVTUIEditorShowAssetsName_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarUIEditorShowAssetsName", 0);
  AVTUIEditorShowAssetsName_once_enabled = result;
  return result;
}

@end