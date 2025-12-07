@interface VFXTextureAsset
- (void)_forceSynchronousLoading;
@end

@implementation VFXTextureAsset

- (void)_forceSynchronousLoading
{
  v3 = objc_msgSend_entityObject(self, a2, v2);

  MEMORY[0x1EEE66B58](v3, sel_makeTextureLoadingSynchronous, v4);
}

@end