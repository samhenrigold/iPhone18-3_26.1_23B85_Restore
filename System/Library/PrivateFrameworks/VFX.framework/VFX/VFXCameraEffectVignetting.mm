@interface VFXCameraEffectVignetting
+ (id)vignetting;
- (VFXCameraEffectVignetting)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)anamorphic;
- (float)intensity;
- (float)radius;
- (float)softness;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setAnamorphic:(float)anamorphic;
- (void)setIntensity:(float)intensity;
- (void)setRadius:(float)radius;
- (void)setSoftness:(float)softness;
@end

@implementation VFXCameraEffectVignetting

- (double)createCFXObject
{
  if (qword_1ED73AD98 != -1)
  {
    sub_1AFDD6E74();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD90, 0x48uLL);
  *(v2 + 64) = 1;
  result = 0.00781250185;
  *(v2 + 72) = xmmword_1AFE21540;
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
    v5[2] = sub_1AF2B10BC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)anamorphic
{
  if (!self->super._isPresentationObject)
  {
    return self->_intensity;
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

- (void)setAnamorphic:(float)anamorphic
{
  if (self->super._isPresentationObject || self->_intensity != anamorphic)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = anamorphic;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B121C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = anamorphic;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"anamorphic", v5);
  }
}

- (float)softness
{
  if (!self->super._isPresentationObject)
  {
    return self->_anamorphic;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160D20(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setSoftness:(float)softness
{
  if (self->super._isPresentationObject || self->_anamorphic != softness)
  {
    v7 = v3;
    v8 = v4;
    self->_anamorphic = softness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B137C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = softness;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"softness", v5);
  }
}

- (float)radius
{
  if (!self->super._isPresentationObject)
  {
    return self->_softness;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160DBC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setRadius:(float)radius
{
  if (self->super._isPresentationObject || self->_softness != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_softness = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B14DC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v5);
  }
}

+ (id)vignetting
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = VFXCameraEffectVignetting;
  v4 = [(VFXCameraEffect *)&v18 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v5);
  *&v8 = self->_intensity;
  objc_msgSend_setAnamorphic_(v4, v9, v10, v8);
  *&v11 = self->_anamorphic;
  objc_msgSend_setSoftness_(v4, v12, v13, v11);
  *&v14 = self->_softness;
  objc_msgSend_setRadius_(v4, v15, v16, v14);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v7.receiver = self;
  v7.super_class = VFXCameraEffectVignetting;
  [(VFXCameraEffect *)&v7 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect, v4);
  self->_anamorphic = sub_1AF160D20(self->super._cameraEffect, v5);
  self->_softness = sub_1AF160DBC(self->super._cameraEffect, v6);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B16E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = VFXCameraEffectVignetting;
  [(VFXCameraEffect *)&v13 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"intensity", v5);
  *&v7 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"anamorphic", v7);
  *&v9 = self->_anamorphic;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"softness", v9);
  *&v11 = self->_softness;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"radius", v11);
}

- (VFXCameraEffectVignetting)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = VFXCameraEffectVignetting;
  v6 = [(VFXCameraEffect *)&v23 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"intensity");
    objc_msgSend_setIntensity_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"anamorphic");
    objc_msgSend_setAnamorphic_(v6, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"softness");
    objc_msgSend_setSoftness_(v6, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"radius");
    objc_msgSend_setRadius_(v6, v19, v20);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v7);
  }

  return v6;
}

@end