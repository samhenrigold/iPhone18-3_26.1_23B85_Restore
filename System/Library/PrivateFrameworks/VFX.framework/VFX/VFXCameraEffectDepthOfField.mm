@interface VFXCameraEffectDepthOfField
+ (id)depthOfField;
- (BOOL)showCircleOfConfusion;
- (VFXCameraEffectDepthOfField)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)fStop;
- (float)inFocusDistance;
- (float)maximumBlurRadius;
- (float)outOfFocusDistance;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mode;
- (int64_t)quality;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setFStop:(float)stop;
- (void)setInFocusDistance:(float)distance;
- (void)setMaximumBlurRadius:(float)radius;
- (void)setMode:(int64_t)mode;
- (void)setOutOfFocusDistance:(float)distance;
- (void)setQuality:(int64_t)quality;
- (void)setShowCircleOfConfusion:(BOOL)confusion;
@end

@implementation VFXCameraEffectDepthOfField

- (double)createCFXObject
{
  if (qword_1ED73AE08 != -1)
  {
    sub_1AFDD6CF8();
  }

  v2 = sub_1AF0D160C(qword_1ED73AE00, 0x50uLL);
  *(v2 + 64) = 1;
  *(v2 + 72) = 1;
  *(v2 + 74) = 0;
  result = 0.00781250188;
  *(v2 + 76) = xmmword_1AFE214F0;
  return result;
}

- (int64_t)quality
{
  if (!self->super._isPresentationObject)
  {
    return self->_quality;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF160A74(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setQuality:(int64_t)quality
{
  if (self->super._isPresentationObject || self->_quality != quality)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_quality = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ABEAC;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"quality", v5);
  }
}

- (BOOL)showCircleOfConfusion
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
    showCircleOfConfusion = sub_1AF160BD4(v8, v9);
    if (v7)
    {
      sub_1AF1CEA9C(v7, v10);
    }
  }

  else
  {
    showCircleOfConfusion = self->_showCircleOfConfusion;
  }

  return showCircleOfConfusion & 1;
}

- (void)setShowCircleOfConfusion:(BOOL)confusion
{
  if (self->super._isPresentationObject || self->_showCircleOfConfusion != confusion)
  {
    v7 = v3;
    v8 = v4;
    self->_showCircleOfConfusion = confusion;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC008;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    confusionCopy = confusion;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"showCircleOfConfusion", v5);
  }
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
  v11 = sub_1AF160B24(v8, v9);
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
    v5[2] = sub_1AF2AC160;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"mode", v5);
  }
}

- (float)fStop
{
  if (!self->super._isPresentationObject)
  {
    return self->_fStop;
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

- (void)setFStop:(float)stop
{
  if (self->super._isPresentationObject || self->_fStop != stop)
  {
    v7 = v3;
    v8 = v4;
    self->_fStop = stop;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC2C0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = stop;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fStop", v5);
  }
}

- (float)inFocusDistance
{
  if (!self->super._isPresentationObject)
  {
    return self->_inFocusDistance;
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

- (void)setInFocusDistance:(float)distance
{
  if (self->super._isPresentationObject || self->_inFocusDistance != distance)
  {
    v7 = v3;
    v8 = v4;
    self->_inFocusDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC420;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"inFocusDistance", v5);
  }
}

- (float)outOfFocusDistance
{
  if (!self->super._isPresentationObject)
  {
    return self->_outOfFocusDistance;
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

- (void)setOutOfFocusDistance:(float)distance
{
  if (self->super._isPresentationObject || self->_outOfFocusDistance != distance)
  {
    v7 = v3;
    v8 = v4;
    self->_outOfFocusDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC580;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"outOfFocusDistance", v5);
  }
}

- (float)maximumBlurRadius
{
  if (!self->super._isPresentationObject)
  {
    return self->_maximumBlurRadius;
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

- (void)setMaximumBlurRadius:(float)radius
{
  if (self->super._isPresentationObject || self->_maximumBlurRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_maximumBlurRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC6E0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumBlurRadius", v5);
  }
}

+ (id)depthOfField
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = VFXCameraEffectDepthOfField;
  v4 = [(VFXCameraEffect *)&v21 copyWithZone:zone];
  objc_msgSend_setQuality_(v4, v5, self->_quality);
  objc_msgSend_setShowCircleOfConfusion_(v4, v6, self->_showCircleOfConfusion);
  objc_msgSend_setMode_(v4, v7, self->_mode);
  *&v8 = self->_fStop;
  objc_msgSend_setFStop_(v4, v9, v10, v8);
  *&v11 = self->_inFocusDistance;
  objc_msgSend_setInFocusDistance_(v4, v12, v13, v11);
  *&v14 = self->_outOfFocusDistance;
  objc_msgSend_setOutOfFocusDistance_(v4, v15, v16, v14);
  *&v17 = self->_maximumBlurRadius;
  objc_msgSend_setMaximumBlurRadius_(v4, v18, v19, v17);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectDepthOfField;
  [(VFXCameraEffect *)&v10 _updateModelFromPresentation];
  self->_quality = sub_1AF160A74(self->super._cameraEffect, v3);
  self->_showCircleOfConfusion = sub_1AF160BD4(self->super._cameraEffect, v4);
  self->_mode = sub_1AF160B24(self->super._cameraEffect, v5);
  self->_fStop = sub_1AF160C84(self->super._cameraEffect, v6);
  self->_inFocusDistance = sub_1AF160D20(self->super._cameraEffect, v7);
  self->_outOfFocusDistance = sub_1AF160DBC(self->super._cameraEffect, v8);
  self->_maximumBlurRadius = sub_1AF160E58(self->super._cameraEffect, v9);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AC96C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = VFXCameraEffectDepthOfField;
  [(VFXCameraEffect *)&v16 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_quality, @"quality");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_showCircleOfConfusion, @"showCircleOfConfusion");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_mode, @"mode");
  *&v8 = self->_fStop;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"fStop", v8);
  *&v10 = self->_inFocusDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"inFocusDistance", v10);
  *&v12 = self->_outOfFocusDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"outOfFocusDistance", v12);
  *&v14 = self->_maximumBlurRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"maximumBlurRadius", v14);
}

- (VFXCameraEffectDepthOfField)initWithCoder:(id)coder
{
  v32.receiver = self;
  v32.super_class = VFXCameraEffectDepthOfField;
  v6 = [(VFXCameraEffect *)&v32 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"quality");
    objc_msgSend_setQuality_(v6, v11, v10);
    v13 = objc_msgSend_decodeBoolForKey_(coder, v12, @"showCircleOfConfusion");
    objc_msgSend_setShowCircleOfConfusion_(v6, v14, v13);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"fStop");
    objc_msgSend_setFStop_(v6, v16, v17);
    if (objc_msgSend_containsValueForKey_(coder, v18, @"mode"))
    {
      v20 = objc_msgSend_decodeIntegerForKey_(coder, v19, @"mode");
      objc_msgSend_setMode_(v6, v21, v20);
    }

    if (objc_msgSend_containsValueForKey_(coder, v19, @"inFocusDistance"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v22, @"inFocusDistance");
      objc_msgSend_setInFocusDistance_(v6, v23, v24);
    }

    if (objc_msgSend_containsValueForKey_(coder, v22, @"outOfFocusDistance"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v25, @"outOfFocusDistance");
      objc_msgSend_setOutOfFocusDistance_(v6, v26, v27);
    }

    if (objc_msgSend_containsValueForKey_(coder, v25, @"maximumBlurRadius"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v28, @"maximumBlurRadius");
      objc_msgSend_setMaximumBlurRadius_(v6, v29, v30);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v28, v7);
  }

  return v6;
}

@end