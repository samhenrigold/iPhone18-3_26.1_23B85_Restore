@interface VFXCameraEffectExposure
+ (id)exposure;
- (BOOL)wantsAdaptation;
- (VFXCameraEffectExposure)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)adaptationBrighteningSpeedFactor;
- (float)adaptationDarkeningSpeedFactor;
- (float)adaptationMaximum;
- (float)adaptationMinimum;
- (float)averageGray;
- (float)offset;
- (float)value;
- (float)whitePoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setAdaptationBrighteningSpeedFactor:(float)factor;
- (void)setAdaptationDarkeningSpeedFactor:(float)factor;
- (void)setAdaptationMaximum:(float)maximum;
- (void)setAdaptationMinimum:(float)minimum;
- (void)setAverageGray:(float)gray;
- (void)setOffset:(float)offset;
- (void)setValue:(float)value;
- (void)setWantsAdaptation:(BOOL)adaptation;
- (void)setWhitePoint:(float)point;
@end

@implementation VFXCameraEffectExposure

- (double)createCFXObject
{
  if (qword_1ED73ADE8 != -1)
  {
    sub_1AFDD6E24();
  }

  v2 = sub_1AF0D160C(qword_1ED73ADE0, 0x60uLL);
  *(v2 + 64) = 1;
  *(v2 + 72) = xmmword_1AFE21500;
  result = 0.0000976562876;
  *(v2 + 88) = xmmword_1AFE21510;
  *(v2 + 104) = 0;
  return result;
}

- (float)value
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

- (void)setValue:(float)value
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != value)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = value;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADC7C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = value;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"value", v5);
  }
}

- (float)offset
{
  if (!self->super._isPresentationObject)
  {
    return self->_value;
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

- (void)setOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_value != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_value = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADDDC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"offset", v5);
  }
}

- (float)averageGray
{
  if (!self->super._isPresentationObject)
  {
    return self->_offset;
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

- (void)setAverageGray:(float)gray
{
  if (self->super._isPresentationObject || self->_offset != gray)
  {
    v7 = v3;
    v8 = v4;
    self->_offset = gray;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADF3C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = gray;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"averageGray", v5);
  }
}

- (float)whitePoint
{
  if (!self->super._isPresentationObject)
  {
    return self->_averageGray;
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

- (void)setWhitePoint:(float)point
{
  if (self->super._isPresentationObject || self->_averageGray != point)
  {
    v7 = v3;
    v8 = v4;
    self->_averageGray = point;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE09C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = point;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whitePoint", v5);
  }
}

- (BOOL)wantsAdaptation
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
    adaptationMaximum_low = sub_1AF1616C4(v8, v9);
    if (v7)
    {
      sub_1AF1CEA9C(v7, v10);
    }
  }

  else
  {
    adaptationMaximum_low = LOBYTE(self->_adaptationMaximum);
  }

  return adaptationMaximum_low & 1;
}

- (void)setWantsAdaptation:(BOOL)adaptation
{
  if (self->super._isPresentationObject || LOBYTE(self->_adaptationMaximum) != adaptation)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_adaptationMaximum) = adaptation;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE1F8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    adaptationCopy = adaptation;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"wantsAdaptation", v5);
  }
}

- (float)adaptationBrighteningSpeedFactor
{
  if (!self->super._isPresentationObject)
  {
    return self->_whitePoint;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160E58(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setAdaptationBrighteningSpeedFactor:(float)factor
{
  if (self->super._isPresentationObject || self->_whitePoint != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_whitePoint = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE358;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationBrighteningSpeedFactor", v5);
  }
}

- (float)adaptationDarkeningSpeedFactor
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationBrighteningSpeedFactor;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1614F0(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setAdaptationDarkeningSpeedFactor:(float)factor
{
  if (self->super._isPresentationObject || self->_adaptationBrighteningSpeedFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationBrighteningSpeedFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE4B8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationDarkeningSpeedFactor", v5);
  }
}

- (float)adaptationMinimum
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationDarkeningSpeedFactor;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF16158C(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setAdaptationMinimum:(float)minimum
{
  if (self->super._isPresentationObject || self->_adaptationDarkeningSpeedFactor != minimum)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationDarkeningSpeedFactor = minimum;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE618;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = minimum;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationMinimum", v5);
  }
}

- (float)adaptationMaximum
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationMinimum;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161628(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setAdaptationMaximum:(float)maximum
{
  if (self->super._isPresentationObject || self->_adaptationMinimum != maximum)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationMinimum = maximum;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE778;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = maximum;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationMaximum", v5);
  }
}

+ (id)exposure
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = VFXCameraEffectExposure;
  v4 = [(VFXCameraEffect *)&v28 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setValue_(v4, v6, v7, v5);
  *&v8 = self->_value;
  objc_msgSend_setOffset_(v4, v9, v10, v8);
  *&v11 = self->_offset;
  objc_msgSend_setAverageGray_(v4, v12, v13, v11);
  *&v14 = self->_whitePoint;
  objc_msgSend_setAdaptationBrighteningSpeedFactor_(v4, v15, v16, v14);
  *&v17 = self->_adaptationBrighteningSpeedFactor;
  objc_msgSend_setAdaptationDarkeningSpeedFactor_(v4, v18, v19, v17);
  *&v20 = self->_adaptationDarkeningSpeedFactor;
  objc_msgSend_setAdaptationMinimum_(v4, v21, v22, v20);
  *&v23 = self->_adaptationMinimum;
  objc_msgSend_setAdaptationMaximum_(v4, v24, v25, v23);
  objc_msgSend_setWantsAdaptation_(v4, v26, LOBYTE(self->_adaptationMaximum));
  return v4;
}

- (void)_updateModelFromPresentation
{
  v11.receiver = self;
  v11.super_class = VFXCameraEffectExposure;
  [(VFXCameraEffect *)&v11 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  self->_value = sub_1AF160C84(self->super._cameraEffect, v4);
  self->_offset = sub_1AF160D20(self->super._cameraEffect, v5);
  LOBYTE(self->_adaptationMaximum) = sub_1AF1616C4(self->super._cameraEffect, v6);
  self->_whitePoint = sub_1AF160E58(self->super._cameraEffect, v7);
  self->_adaptationBrighteningSpeedFactor = sub_1AF1614F0(self->super._cameraEffect, v8);
  self->_adaptationDarkeningSpeedFactor = sub_1AF16158C(self->super._cameraEffect, v9);
  self->_adaptationMinimum = sub_1AF161628(self->super._cameraEffect, v10);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AEA24;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = VFXCameraEffectExposure;
  [(VFXCameraEffect *)&v22 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"value", v5);
  *&v7 = self->_value;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"offset", v7);
  *&v9 = self->_offset;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"averageGray", v9);
  *&v11 = self->_averageGray;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"whitePoint", v11);
  objc_msgSend_encodeBool_forKey_(coder, v13, LOBYTE(self->_adaptationMaximum), @"wantsAdaptation");
  *&v14 = self->_whitePoint;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"adaptationBrighteningSpeedFactor", v14);
  *&v16 = self->_adaptationBrighteningSpeedFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"adaptationDarkeningSpeedFactor", v16);
  *&v18 = self->_adaptationDarkeningSpeedFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"adaptationMinimum", v18);
  *&v20 = self->_adaptationMinimum;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"adaptationMaximum", v20);
}

- (VFXCameraEffectExposure)initWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = VFXCameraEffectExposure;
  v6 = [(VFXCameraEffect *)&v38 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"value");
    objc_msgSend_setValue_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"offset");
    objc_msgSend_setOffset_(v6, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"averageGray");
    objc_msgSend_setAverageGray_(v6, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"whitePoint");
    objc_msgSend_setWhitePoint_(v6, v19, v20);
    v22 = objc_msgSend_decodeBoolForKey_(coder, v21, @"wantsAdaptation");
    objc_msgSend_setWantsAdaptation_(v6, v23, v22);
    objc_msgSend_decodeFloatForKey_(coder, v24, @"adaptationBrighteningSpeedFactor");
    objc_msgSend_setAdaptationBrighteningSpeedFactor_(v6, v25, v26);
    objc_msgSend_decodeFloatForKey_(coder, v27, @"adaptationDarkeningSpeedFactor");
    objc_msgSend_setAdaptationDarkeningSpeedFactor_(v6, v28, v29);
    objc_msgSend_decodeFloatForKey_(coder, v30, @"adaptationMinimum");
    objc_msgSend_setAdaptationMinimum_(v6, v31, v32);
    objc_msgSend_decodeFloatForKey_(coder, v33, @"adaptationMaximum");
    objc_msgSend_setAdaptationMaximum_(v6, v34, v35);
    objc_msgSend_setImmediateMode_(VFXTransaction, v36, v7);
  }

  return v6;
}

@end