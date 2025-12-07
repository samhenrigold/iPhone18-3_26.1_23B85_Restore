@interface AVTUIShowTrackingLostReticle
@end

@implementation AVTUIShowTrackingLostReticle

void *__AVTUIShowTrackingLostReticle_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarShowTrackingLostReticle", 0);
  AVTUIShowTrackingLostReticle_once_enabled = result;
  return result;
}

@end