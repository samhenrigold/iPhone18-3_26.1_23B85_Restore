@interface VFXCameraEffectColorFringe
+ (id)colorFringe;
- (VFXCameraEffectColorFringe)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)intensity;
- (float)strength;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setIntensity:(float)intensity;
- (void)setStrength:(float)strength;
@end

@implementation VFXCameraEffectColorFringe

- (double)createCFXObject
{
  if (qword_1ED73AE28 != -1)
  {
    sub_1AFDD6E88();
  }

  v2 = sub_1AF0D160C(qword_1ED73AE20, 0x40uLL);
  *(v2 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 72) = result;
  return result;
}

- (float)strength
{
  if (!self->super._isPresentationObject)
  {
    return *(&self->super._enabled + 1);
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160C84(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setStrength:(float)strength
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != strength)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = strength;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B1A44;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = strength;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"strength", v5);
  }
}

- (float)intensity
{
  if (!self->super._isPresentationObject)
  {
    return self->_strength;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160FEC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setIntensity:(float)intensity
{
  if (self->super._isPresentationObject || self->_strength != intensity)
  {
    v7 = v3;
    v8 = v4;
    self->_strength = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B1BA4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

+ (id)colorFringe
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = VFXCameraEffectColorFringe;
  v4 = [(VFXCameraEffect *)&v12 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setStrength_(v4, v6, v7, v5);
  *&v8 = self->_strength;
  objc_msgSend_setIntensity_(v4, v9, v10, v8);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v5.receiver = self;
  v5.super_class = VFXCameraEffectColorFringe;
  [(VFXCameraEffect *)&v5 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160C84(self->super._cameraEffect, v3);
  self->_strength = sub_1AF160FEC(self->super._cameraEffect, v4);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B1D60;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = VFXCameraEffectColorFringe;
  [(VFXCameraEffect *)&v9 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"strength", v5);
  *&v7 = self->_strength;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"intensity", v7);
}

- (VFXCameraEffectColorFringe)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXCameraEffectColorFringe;
  v6 = [(VFXCameraEffect *)&v17 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"strength");
    objc_msgSend_setStrength_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"intensity");
    objc_msgSend_setIntensity_(v6, v13, v14);
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v7);
  }

  return v6;
}

@end