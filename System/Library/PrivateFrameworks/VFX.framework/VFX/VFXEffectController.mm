@interface VFXEffectController
- (VFXEffectController)initWithCoder:(id)coder;
- (void)dealloc;
@end

@implementation VFXEffectController

- (VFXEffectController)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXEffectController;
  v4 = [(VFXEffectController *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"rootIdentifier");
    objc_msgSend_setTag_(v4, v8, v7);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXEffectController;
  [(VFXEffectController *)&v3 dealloc];
}

@end