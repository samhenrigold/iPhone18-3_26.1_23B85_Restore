@interface VFXCameraEffectToneMapping
+ (id)toneMapping;
- (VFXCameraEffectToneMapping)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)eval:(float)eval;
- (float)gamma;
- (float)shoulderAngle;
- (float)shoulderLength;
- (float)shoulderStrength;
- (float)toeLength;
- (float)toeStrength;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mode;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setGamma:(float)gamma;
- (void)setMode:(int64_t)mode;
- (void)setShoulderAngle:(float)angle;
- (void)setShoulderLength:(float)length;
- (void)setShoulderStrength:(float)strength;
- (void)setToeLength:(float)length;
- (void)setToeStrength:(float)strength;
@end

@implementation VFXCameraEffectToneMapping

- (double)createCFXObject
{
  if (qword_1ED73ADA8 != -1)
  {
    sub_1AFDD6E38();
  }

  v2 = sub_1AF0D160C(qword_1ED73ADA0, 0xC0uLL);
  *(v2 + 64) = 1;
  *(v2 + 180) = xmmword_1AFE21520;
  *(v2 + 196) = 0x3F80000000000000;
  *(v2 + 76) = xmmword_1AFE21530;
  *&result = 1065353216;
  *(v2 + 92) = 1065353216;
  *(v2 + 100) = 0;
  return result;
}

- (int64_t)mode
{
  if (!self->super._isPresentationObject)
  {
    return self->_mode;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1618F4(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setMode:(int64_t)mode
{
  if (self->super._isPresentationObject || self->_mode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_mode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AEEE0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"mode", v5);
  }
}

- (float)toeStrength
{
  if (!self->super._isPresentationObject)
  {
    return self->_toeStrength;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1619E0(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setToeStrength:(float)strength
{
  if (self->super._isPresentationObject || self->_toeStrength != strength)
  {
    v7 = v3;
    v8 = v4;
    self->_toeStrength = strength;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF040;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = strength;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toeStrength", v5);
  }
}

- (float)toeLength
{
  if (!self->super._isPresentationObject)
  {
    return self->_toeLength;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161A84(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setToeLength:(float)length
{
  if (self->super._isPresentationObject || self->_toeLength != length)
  {
    v7 = v3;
    v8 = v4;
    self->_toeLength = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF1A0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toeLength", v5);
  }
}

- (float)shoulderStrength
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderStrength;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161B28(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setShoulderStrength:(float)strength
{
  if (self->super._isPresentationObject || self->_shoulderStrength != strength)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderStrength = strength;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF300;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = strength;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderStrength", v5);
  }
}

- (float)shoulderLength
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderLength;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161BCC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setShoulderLength:(float)length
{
  if (self->super._isPresentationObject || self->_shoulderLength != length)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderLength = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF460;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderLength", v5);
  }
}

- (float)shoulderAngle
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderAngle;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161C70(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setShoulderAngle:(float)angle
{
  if (self->super._isPresentationObject || self->_shoulderAngle != angle)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderAngle = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF5C0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderAngle", v5);
  }
}

- (float)gamma
{
  if (!self->super._isPresentationObject)
  {
    return self->_gamma;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF161D14(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setGamma:(float)gamma
{
  if (self->super._isPresentationObject || self->_gamma != gamma)
  {
    v7 = v3;
    v8 = v4;
    self->_gamma = gamma;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF720;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = gamma;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gamma", v5);
  }
}

+ (id)toneMapping
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (float)eval:(float)eval
{
  v6 = objc_msgSend_worldRef(self, a2, v3);
  v8 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  cameraEffect = self->super._cameraEffect;
  if (cameraEffect)
  {
    eval = sub_1AF161DB8(cameraEffect, eval);
  }

  if (v8)
  {
    sub_1AF1CEA9C(v8, v7);
  }

  return eval;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = VFXCameraEffectToneMapping;
  v4 = [(VFXCameraEffect *)&v25 copyWithZone:zone];
  objc_msgSend_setMode_(v4, v5, self->_mode);
  *&v6 = self->_toeStrength;
  objc_msgSend_setToeStrength_(v4, v7, v8, v6);
  *&v9 = self->_toeLength;
  objc_msgSend_setToeLength_(v4, v10, v11, v9);
  *&v12 = self->_shoulderStrength;
  objc_msgSend_setShoulderStrength_(v4, v13, v14, v12);
  *&v15 = self->_shoulderLength;
  objc_msgSend_setShoulderLength_(v4, v16, v17, v15);
  *&v18 = self->_shoulderAngle;
  objc_msgSend_setShoulderAngle_(v4, v19, v20, v18);
  *&v21 = self->_gamma;
  objc_msgSend_setGamma_(v4, v22, v23, v21);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectToneMapping;
  [(VFXCameraEffect *)&v10 _updateModelFromPresentation];
  self->_mode = sub_1AF1618F4(self->super._cameraEffect, v3);
  self->_toeStrength = sub_1AF1619E0(self->super._cameraEffect, v4);
  self->_toeLength = sub_1AF161A84(self->super._cameraEffect, v5);
  self->_shoulderStrength = sub_1AF161B28(self->super._cameraEffect, v6);
  self->_shoulderLength = sub_1AF161BCC(self->super._cameraEffect, v7);
  self->_shoulderAngle = sub_1AF161C70(self->super._cameraEffect, v8);
  self->_gamma = sub_1AF161D14(self->super._cameraEffect, v9);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AFA0C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXCameraEffectToneMapping;
  [(VFXCameraEffect *)&v18 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_mode, @"mode");
  *&v6 = self->_toeStrength;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"toeStrength", v6);
  *&v8 = self->_toeLength;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"toeLength", v8);
  *&v10 = self->_shoulderStrength;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"shoulderStrength", v10);
  *&v12 = self->_shoulderLength;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"shoulderLength", v12);
  *&v14 = self->_shoulderAngle;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"shoulderAngle", v14);
  *&v16 = self->_gamma;
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"gamma", v16);
}

- (VFXCameraEffectToneMapping)initWithCoder:(id)coder
{
  v32.receiver = self;
  v32.super_class = VFXCameraEffectToneMapping;
  v6 = [(VFXCameraEffect *)&v32 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"mode");
    objc_msgSend_setMode_(v6, v11, v10);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"toeStrength");
    objc_msgSend_setToeStrength_(v6, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"toeLength");
    objc_msgSend_setToeLength_(v6, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"shoulderStrength");
    objc_msgSend_setShoulderStrength_(v6, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"shoulderLength");
    objc_msgSend_setShoulderLength_(v6, v22, v23);
    objc_msgSend_decodeFloatForKey_(coder, v24, @"shoulderAngle");
    objc_msgSend_setShoulderAngle_(v6, v25, v26);
    objc_msgSend_decodeFloatForKey_(coder, v27, @"gamma");
    objc_msgSend_setGamma_(v6, v28, v29);
    objc_msgSend_setImmediateMode_(VFXTransaction, v30, v7);
  }

  return v6;
}

@end