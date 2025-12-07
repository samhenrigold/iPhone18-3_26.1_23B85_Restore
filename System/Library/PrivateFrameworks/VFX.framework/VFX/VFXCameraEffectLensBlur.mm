@interface VFXCameraEffectLensBlur
+ (id)lensBlur;
- (VFXCameraEffectLensBlur)initWithCoder:(id)coder;
- (float)radius;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)filterQuality;
- (uint64_t)createCFXObject;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setFilterQuality:(int64_t)quality;
- (void)setRadius:(float)radius;
@end

@implementation VFXCameraEffectLensBlur

- (uint64_t)createCFXObject
{
  if (qword_1ED73ADC8 != -1)
  {
    sub_1AFDD6E9C();
  }

  result = sub_1AF0D160C(qword_1ED73ADC0, 0x40uLL);
  *(result + 64) = 1;
  *(result + 72) = 1065353216;
  *(result + 76) = 0;
  return result;
}

- (float)radius
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

- (void)setRadius:(float)radius
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != radius)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B3A68;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v5);
  }
}

- (int64_t)filterQuality
{
  if (!self->super._isPresentationObject)
  {
    return *&self->_radius;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF163080(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setFilterQuality:(int64_t)quality
{
  if (self->super._isPresentationObject || *&self->_radius != quality)
  {
    v5[6] = v3;
    v5[7] = v4;
    *&self->_radius = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B3BC0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"filterQuality", v5);
  }
}

+ (id)lensBlur
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectLensBlur;
  v4 = [(VFXCameraEffect *)&v10 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setRadius_(v4, v6, v7, v5);
  objc_msgSend_setFilterQuality_(v4, v8, *&self->_radius);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v5.receiver = self;
  v5.super_class = VFXCameraEffectLensBlur;
  [(VFXCameraEffect *)&v5 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  *&self->_radius = sub_1AF163080(self->super._cameraEffect, v4);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B3D80;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = VFXCameraEffectLensBlur;
  [(VFXCameraEffect *)&v9 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"radius", v5);
  *&v7 = *&self->_radius;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"filterQuality", v7);
}

- (VFXCameraEffectLensBlur)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXCameraEffectLensBlur;
  v6 = [(VFXCameraEffect *)&v17 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"radius");
    objc_msgSend_setRadius_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"filterQuality");
    objc_msgSend_setFilterQuality_(v6, v14, v13);
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v7);
  }

  return v6;
}

@end