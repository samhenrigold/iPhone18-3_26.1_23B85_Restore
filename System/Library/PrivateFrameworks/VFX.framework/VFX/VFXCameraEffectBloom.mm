@interface VFXCameraEffectBloom
+ (id)bloom;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (BOOL)useHighQuality;
- (VFXCameraEffectBloom)initWithCoder:(id)coder;
- (__n128)colorFilter;
- (double)createCFXObject;
- (float)contrast;
- (float)intensity;
- (float)saturation;
- (float)threshold;
- (float)thresholdSmoothness;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (int64_t)iterationCount;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setColorFilter:(VFXCameraEffectBloom *)self;
- (void)setContrast:(float)contrast;
- (void)setIntensity:(float)intensity;
- (void)setIterationCount:(int64_t)count;
- (void)setSaturation:(float)saturation;
- (void)setThreshold:(float)threshold;
- (void)setThresholdSmoothness:(float)smoothness;
- (void)setUseHighQuality:(BOOL)quality;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXCameraEffectBloom

- (double)createCFXObject
{
  if (qword_1ED73AE48 != -1)
  {
    sub_1AFDD6E4C();
  }

  v2 = sub_1AF0D160C(qword_1ED73AE40, 0x70uLL);
  *(v2 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 72) = result;
  *(v2 + 80) = 1036831949;
  *(v2 + 84) = 1;
  __asm { FMOV            V1.4S, #1.0 }

  *(v2 + 96) = _Q1;
  *(v2 + 112) = result;
  *(v2 + 120) = 10;
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
    v5[2] = sub_1AF2AFE50;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)threshold
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

- (void)setThreshold:(float)threshold
{
  if (self->super._isPresentationObject || self->_intensity != threshold)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = threshold;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AFFB0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = threshold;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"threshold", v5);
  }
}

- (float)thresholdSmoothness
{
  if (!self->super._isPresentationObject)
  {
    return self->_threshold;
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

- (void)setThresholdSmoothness:(float)smoothness
{
  if (self->super._isPresentationObject || self->_threshold != smoothness)
  {
    v7 = v3;
    v8 = v4;
    self->_threshold = smoothness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0110;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = smoothness;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"thresholdSmoothness", v5);
  }
}

- (BOOL)useHighQuality
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
    thresholdSmoothness_low = sub_1AF1611EC(v8, v9);
    if (v7)
    {
      sub_1AF1CEA9C(v7, v10);
    }
  }

  else
  {
    thresholdSmoothness_low = LOBYTE(self->_thresholdSmoothness);
  }

  return thresholdSmoothness_low & 1;
}

- (void)setUseHighQuality:(BOOL)quality
{
  if (self->super._isPresentationObject || LOBYTE(self->_thresholdSmoothness) != quality)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_thresholdSmoothness) = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B026C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    qualityCopy = quality;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"useHighQuality", v5);
  }
}

- (__n128)colorFilter
{
  if (self[1].n128_u8[12] == 1)
  {
    v4 = objc_msgSend_worldRef(self, a2, a3);
    v7 = v4;
    if (v4)
    {
      sub_1AF1CEA20(v4, v5);
    }

    v8 = objc_msgSend_cfxObject(self, v5, v6);
    result = sub_1AF162408(v8, v9);
    if (v7)
    {
      v12 = result;
      sub_1AF1CEA9C(v7, v10);
      return v12;
    }
  }

  else
  {
    return self[5];
  }

  return result;
}

- (void)setColorFilter:(VFXCameraEffectBloom *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*&self->_colorFilter[3], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_colorFilter[3] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B03D8;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"colorFilter", v4);
  }
}

- (float)contrast
{
  if (!self->super._isPresentationObject)
  {
    return self->_contrast;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1624AC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setContrast:(float)contrast
{
  if (self->super._isPresentationObject || self->_contrast != contrast)
  {
    v7 = v3;
    v8 = v4;
    self->_contrast = contrast;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0538;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = contrast;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"contrast", v5);
  }
}

- (float)saturation
{
  if (!self->super._isPresentationObject)
  {
    return self->_saturation;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF162548(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setSaturation:(float)saturation
{
  if (self->super._isPresentationObject || self->_saturation != saturation)
  {
    v7 = v3;
    v8 = v4;
    self->_saturation = saturation;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0698;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = saturation;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"saturation", v5);
  }
}

- (int64_t)iterationCount
{
  if (!self->super._isPresentationObject)
  {
    return self->_iterationCount;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1625E4(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setIterationCount:(int64_t)count
{
  if (self->super._isPresentationObject || self->_iterationCount != count)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_iterationCount = count;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B07F0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"iterationCount", v5);
  }
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(key, a2, @"colorFilter");
  if (isEqualToString)
  {
    objc_msgSend_colorFilter(self, v6, v7);
    *v4 = v9;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"colorFilter"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_colorFilter(self, v5, v6);

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXCameraEffectBloom;
    return [(VFXCameraEffectBloom *)&v11 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"colorFilter"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setColorFilter_(self, v9, v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXCameraEffectBloom;
    [(VFXCameraEffectBloom *)&v11 setValue:value forKey:key];
  }
}

+ (id)bloom
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = VFXCameraEffectBloom;
  v4 = [(VFXCameraEffect *)&v25 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v5);
  *&v8 = self->_intensity;
  objc_msgSend_setThreshold_(v4, v9, v10, v8);
  *&v11 = self->_threshold;
  objc_msgSend_setThresholdSmoothness_(v4, v12, v13, v11);
  objc_msgSend_setUseHighQuality_(v4, v14, LOBYTE(self->_thresholdSmoothness));
  objc_msgSend_setColorFilter_(v4, v15, v16, *&self->_colorFilter[3]);
  *&v17 = self->_contrast;
  objc_msgSend_setContrast_(v4, v18, v19, v17);
  *&v20 = self->_saturation;
  objc_msgSend_setSaturation_(v4, v21, v22, v20);
  objc_msgSend_setIterationCount_(v4, v23, self->_iterationCount);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v11.receiver = self;
  v11.super_class = VFXCameraEffectBloom;
  [(VFXCameraEffect *)&v11 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect, v4);
  self->_threshold = sub_1AF160D20(self->super._cameraEffect, v5);
  LOBYTE(self->_thresholdSmoothness) = sub_1AF1611EC(self->super._cameraEffect, v6);
  *&self->_colorFilter[3] = sub_1AF162408(self->super._cameraEffect, v7);
  self->_contrast = sub_1AF1624AC(self->super._cameraEffect, v8);
  self->_saturation = sub_1AF162548(self->super._cameraEffect, v9);
  self->_iterationCount = sub_1AF1625E4(self->super._cameraEffect, v10);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B0C28;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXCameraEffectBloom;
  [(VFXCameraEffect *)&v17 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"intensity", v5);
  *&v7 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"threshold", v7);
  *&v9 = self->_threshold;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"thresholdSmoothness", v9);
  objc_msgSend_encodeBool_forKey_(coder, v11, LOBYTE(self->_thresholdSmoothness), @"useHighQuality");
  sub_1AF371A8C(coder, @"colorFilter", *&self->_colorFilter[3]);
  *&v12 = self->_contrast;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"contrast", v12);
  *&v14 = self->_saturation;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"saturation", v14);
  objc_msgSend_encodeInteger_forKey_(coder, v16, self->_iterationCount, @"iterationCount");
}

- (VFXCameraEffectBloom)initWithCoder:(id)coder
{
  v35.receiver = self;
  v35.super_class = VFXCameraEffectBloom;
  v6 = [(VFXCameraEffect *)&v35 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"intensity");
    objc_msgSend_setIntensity_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"threshold");
    objc_msgSend_setThreshold_(v6, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"thresholdSmoothness");
    objc_msgSend_setThresholdSmoothness_(v6, v16, v17);
    v19 = objc_msgSend_decodeBoolForKey_(coder, v18, @"useHighQuality");
    objc_msgSend_setUseHighQuality_(v6, v20, v19);
    v21 = sub_1AF371BC4(coder, @"colorFilter");
    objc_msgSend_setColorFilter_(v6, v22, v23, v21);
    objc_msgSend_decodeFloatForKey_(coder, v24, @"contrast");
    objc_msgSend_setContrast_(v6, v25, v26);
    objc_msgSend_decodeFloatForKey_(coder, v27, @"saturation");
    objc_msgSend_setSaturation_(v6, v28, v29);
    v31 = objc_msgSend_decodeIntegerForKey_(coder, v30, @"iterationCount");
    objc_msgSend_setIterationCount_(v6, v32, v31);
    objc_msgSend_setImmediateMode_(VFXTransaction, v33, v7);
  }

  return v6;
}

@end