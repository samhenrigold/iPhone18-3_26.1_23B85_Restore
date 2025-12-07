@interface VFXCameraEffectMotionBlur
+ (id)motionBlur;
- (VFXCameraEffectMotionBlur)initWithCoder:(id)coder;
- (float)intensity;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)createCFXObject;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setIntensity:(float)intensity;
@end

@implementation VFXCameraEffectMotionBlur

- (uint64_t)createCFXObject
{
  if (qword_1ED73ADB8 != -1)
  {
    sub_1AFDD6DFC();
  }

  result = sub_1AF0D160C(qword_1ED73ADB0, 0x40uLL);
  *(result + 64) = 1;
  *(result + 72) = 1065353216;
  return result;
}

- (float)intensity
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
  v11 = sub_1AF160FEC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setIntensity:(float)intensity
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != intensity)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ACE08;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

+ (id)motionBlur
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = VFXCameraEffectMotionBlur;
  v4 = [(VFXCameraEffect *)&v9 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v5);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v4.receiver = self;
  v4.super_class = VFXCameraEffectMotionBlur;
  [(VFXCameraEffect *)&v4 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2ACF9C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = VFXCameraEffectMotionBlur;
  [(VFXCameraEffect *)&v7 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"intensity", v5);
}

- (VFXCameraEffectMotionBlur)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = VFXCameraEffectMotionBlur;
  v6 = [(VFXCameraEffect *)&v14 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"intensity");
    objc_msgSend_setIntensity_(v6, v10, v11);
    objc_msgSend_setImmediateMode_(VFXTransaction, v12, v7);
  }

  return v6;
}

@end