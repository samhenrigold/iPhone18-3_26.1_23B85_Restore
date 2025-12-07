@interface VFXAudioAsset
- (void)didDetachFromWorld:(id)world;
@end

@implementation VFXAudioAsset

- (void)didDetachFromWorld:(id)world
{
  v4 = objc_msgSend_scene(world, a2, world);

  MEMORY[0x1EEE66B58](v4, sel_willRemoveAudioAsset_fromWorld_, self);
}

@end