@interface AVTUIForceCameraDisclosures
@end

@implementation AVTUIForceCameraDisclosures

void *__AVTUIForceCameraDisclosures_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarForceCameraDisclosures", 0);
  AVTUIForceCameraDisclosures_once_enabled = result;
  return result;
}

@end