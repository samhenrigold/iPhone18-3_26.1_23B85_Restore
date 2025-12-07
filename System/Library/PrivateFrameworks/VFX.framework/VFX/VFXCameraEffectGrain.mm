@interface VFXCameraEffectGrain
+ (id)grain;
- (BOOL)isColored;
- (VFXCameraEffectGrain)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)intensity;
- (float)scale;
- (float)slice;
- (id)copyWithZone:(_NSZone *)zone;
- (id)texture;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setColored:(BOOL)colored;
- (void)setIntensity:(float)intensity;
- (void)setScale:(float)scale;
- (void)setSlice:(float)slice;
- (void)setTexture:(id)texture;
@end

@implementation VFXCameraEffectGrain

- (double)createCFXObject
{
  if (qword_1ED73ADD8 != -1)
  {
    sub_1AFDD6E10();
  }

  v2 = sub_1AF0D160C(qword_1ED73ADD0, 0x50uLL);
  *(v2 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 72) = result;
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
    v5[2] = sub_1AF2AD1E8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)scale
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

- (void)setScale:(float)scale
{
  if (self->super._isPresentationObject || self->_intensity != scale)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = scale;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD348;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = scale;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"scale", v5);
  }
}

- (float)slice
{
  if (!self->super._isPresentationObject)
  {
    return self->_scale;
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

- (void)setSlice:(float)slice
{
  if (self->super._isPresentationObject || self->_scale != slice)
  {
    v7 = v3;
    v8 = v4;
    self->_scale = slice;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD4A8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = slice;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"slice", v5);
  }
}

- (BOOL)isColored
{
  if (self->super._isPresentationObject)
  {
    v4 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v4;
    if (v4)
    {
      sub_1AF1CEA20(v4, v5);
    }

    v8 = objc_msgSend_cfxObject(self, v5, v6);
    slice_low = sub_1AF1611EC(v8, v9);
    if (v7)
    {
      sub_1AF1CEA9C(v7, v10);
    }
  }

  else
  {
    slice_low = LOBYTE(self->_slice);
  }

  return slice_low & 1;
}

- (void)setColored:(BOOL)colored
{
  if (self->super._isPresentationObject || LOBYTE(self->_slice) != colored)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_slice) = colored;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD604;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    coloredCopy = colored;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"isColored", v5);
  }
}

- (id)texture
{
  if (!self->super._isPresentationObject)
  {
    return self->_texture;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161288(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setTexture:(id)texture
{
  if (self->super._isPresentationObject || self->_texture != texture)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_texture = texture;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD754;
    v5[3] = &unk_1E7A7E220;
    v5[4] = self;
    v5[5] = texture;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

+ (id)grain
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = VFXCameraEffectGrain;
  v4 = [(VFXCameraEffect *)&v9 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v5);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v8.receiver = self;
  v8.super_class = VFXCameraEffectGrain;
  [(VFXCameraEffect *)&v8 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect, v4);
  LOBYTE(self->_slice) = sub_1AF1611EC(self->super._cameraEffect, v5);
  self->_scale = sub_1AF160D20(self->super._cameraEffect, v6);
  self->_texture = sub_1AF161288(self->super._cameraEffect, v7);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AD938;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectGrain;
  [(VFXCameraEffect *)&v10 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"intensity", v5);
  *&v7 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"scale", v7);
  objc_msgSend_encodeBool_forKey_(coder, v9, LOBYTE(self->_slice), @"colored");
}

- (VFXCameraEffectGrain)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = VFXCameraEffectGrain;
  v6 = [(VFXCameraEffect *)&v20 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"intensity");
    objc_msgSend_setIntensity_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"scale");
    objc_msgSend_setScale_(v6, v13, v14);
    v16 = objc_msgSend_decodeBoolForKey_(coder, v15, @"colored");
    objc_msgSend_setColored_(v6, v17, v16);
    objc_msgSend_setImmediateMode_(VFXTransaction, v18, v7);
  }

  return v6;
}

@end