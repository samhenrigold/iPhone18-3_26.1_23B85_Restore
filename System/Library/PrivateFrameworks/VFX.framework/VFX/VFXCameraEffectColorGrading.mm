@interface VFXCameraEffectColorGrading
+ (id)colorGrading;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (VFXCameraEffectColorGrading)initWithCoder:(id)coder;
- (__n128)gainColor;
- (__n128)gammaColor;
- (__n128)liftColor;
- (double)createCFXObject;
- (float)contrast;
- (float)gainOffset;
- (float)gammaOffset;
- (float)liftOffset;
- (float)saturation;
- (float)whiteBalanceTemperature;
- (float)whiteBalanceTint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lookupTable;
- (id)valueForKey:(id)key;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setContrast:(float)contrast;
- (void)setGainColor:(VFXCameraEffectColorGrading *)self;
- (void)setGainOffset:(float)offset;
- (void)setGammaColor:(VFXCameraEffectColorGrading *)self;
- (void)setGammaOffset:(float)offset;
- (void)setLiftColor:(VFXCameraEffectColorGrading *)self;
- (void)setLiftOffset:(float)offset;
- (void)setLookupTable:(id)table;
- (void)setSaturation:(float)saturation;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWhiteBalanceTemperature:(float)temperature;
- (void)setWhiteBalanceTint:(float)tint;
@end

@implementation VFXCameraEffectColorGrading

- (double)createCFXObject
{
  if (qword_1ED73AE18 != -1)
  {
    sub_1AFDD6E60();
  }

  v2 = sub_1AF0D160C(qword_1ED73AE10, 0xB0uLL);
  *(v2 + 64) = 1;
  result = 0.00781250185;
  *(v2 + 72) = xmmword_1AFE20670;
  *(v2 + 184) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  return result;
}

- (void)dealloc
{
  objc_msgSend_parentWillDie_(self->_lookupTable, a2, self);

  v3.receiver = self;
  v3.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v3 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  lookupTable = self->_lookupTable;
  if (lookupTable)
  {
    (*(block + 2))(block, lookupTable, 1, 0);
  }

  v8.receiver = self;
  v8.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v8 enumerateReferencesForOperation:operation usingBlock:block];
}

- (float)saturation
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

- (void)setSaturation:(float)saturation
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != saturation)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = saturation;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2108;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = saturation;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"saturation", v5);
  }
}

- (float)contrast
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
  v11 = sub_1AF160C84(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setContrast:(float)contrast
{
  if (self->super._isPresentationObject || self->_saturation != contrast)
  {
    v7 = v3;
    v8 = v4;
    self->_saturation = contrast;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2268;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = contrast;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"contrast", v5);
  }
}

- (float)whiteBalanceTemperature
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
  v11 = sub_1AF160D20(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setWhiteBalanceTemperature:(float)temperature
{
  if (self->super._isPresentationObject || self->_contrast != temperature)
  {
    v7 = v3;
    v8 = v4;
    self->_contrast = temperature;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B23C8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = temperature;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whiteBalanceTemperature", v5);
  }
}

- (float)whiteBalanceTint
{
  if (!self->super._isPresentationObject)
  {
    return self->_whiteBalanceTemperature;
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

- (void)setWhiteBalanceTint:(float)tint
{
  if (self->super._isPresentationObject || self->_whiteBalanceTemperature != tint)
  {
    v7 = v3;
    v8 = v4;
    self->_whiteBalanceTemperature = tint;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2528;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = tint;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whiteBalanceTint", v5);
  }
}

- (__n128)liftColor
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

- (void)setLiftColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_liftColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_liftColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2694;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"liftColor", v4);
  }
}

- (float)liftOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_liftOffset;
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

- (void)setLiftOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_liftOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_liftOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B27F4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"liftOffset", v5);
  }
}

- (__n128)gammaColor
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
    result = sub_1AF1628E8(v8, v9);
    if (v7)
    {
      v12 = result;
      sub_1AF1CEA9C(v7, v10);
      return v12;
    }
  }

  else
  {
    return self[7];
  }

  return result;
}

- (void)setGammaColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_gammaColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_gammaColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2960;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gammaColor", v4);
  }
}

- (float)gammaOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_gammaOffset;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF16298C(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setGammaOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_gammaOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_gammaOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2AC0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gammaOffset", v5);
  }
}

- (__n128)gainColor
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
    result = sub_1AF162A28(v8, v9);
    if (v7)
    {
      v12 = result;
      sub_1AF1CEA9C(v7, v10);
      return v12;
    }
  }

  else
  {
    return self[9];
  }

  return result;
}

- (void)setGainColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_gainColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_gainColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2C2C;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gainColor", v4);
  }
}

- (float)gainOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_gainOffset;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF162ACC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setGainOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_gainOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_gainOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2D8C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gainOffset", v5);
  }
}

- (id)lookupTable
{
  if (!self->super._isPresentationObject)
  {
    return self->_lookupTable;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v10 = sub_1AF162BF0(v8, v9);
  if (v10)
  {
    v12 = sub_1AF16CDEC(v10);
    if (!v7)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v12 = 0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v11);
  }

  return v12;
}

- (void)setLookupTable:(id)table
{
  lookupTable = self->_lookupTable;
  if (lookupTable != table || self->super._isPresentationObject)
  {

    self->_lookupTable = table;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2B2F0C;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = table;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor"))
  {
    objc_msgSend_liftColor(self, v7, v8);
LABEL_7:
    *v4 = v9;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"gammaColor"))
  {
    objc_msgSend_gammaColor(self, v10, v11);
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v10, @"gainColor");
  if (isEqualToString)
  {
    objc_msgSend_gainColor(self, v13, v14);
    goto LABEL_7;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_liftColor(self, v5, v6);
  }

  else if (objc_msgSend_isEqualToString_(key, v5, @"gammaColor"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_gammaColor(self, v10, v11);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v10, @"gainColor"))
    {
      v15.receiver = self;
      v15.super_class = VFXCameraEffectColorGrading;
      return [(VFXCameraEffectColorGrading *)&v15 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_gainColor(self, v12, v13);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setLiftColor_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"gammaColor"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setGammaColor_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"gainColor"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    objc_msgSend_setGainColor_(self, v17, v18);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VFXCameraEffectColorGrading;
    [(VFXCameraEffectColorGrading *)&v19 setValue:value forKey:key];
  }
}

+ (id)colorGrading
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v38.receiver = self;
  v38.super_class = VFXCameraEffectColorGrading;
  v4 = [(VFXCameraEffect *)&v38 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setSaturation_(v4, v6, v7, v5);
  *&v8 = self->_saturation;
  objc_msgSend_setContrast_(v4, v9, v10, v8);
  *&v11 = self->_contrast;
  objc_msgSend_setWhiteBalanceTemperature_(v4, v12, v13, v11);
  *&v14 = self->_whiteBalanceTemperature;
  objc_msgSend_setWhiteBalanceTint_(v4, v15, v16, v14);
  objc_msgSend_setLiftColor_(v4, v17, v18, *self->_liftColor);
  *&v19 = self->_liftOffset;
  objc_msgSend_setLiftOffset_(v4, v20, v21, v19);
  objc_msgSend_setGammaColor_(v4, v22, v23, *self->_gammaColor);
  *&v24 = self->_gammaOffset;
  objc_msgSend_setGammaOffset_(v4, v25, v26, v24);
  objc_msgSend_setGainColor_(v4, v27, v28, *self->_gainColor);
  *&v29 = self->_gainOffset;
  objc_msgSend_setGainOffset_(v4, v30, v31, v29);
  v34 = objc_msgSend_copy(self->_lookupTable, v32, v33);
  objc_msgSend__setParent_(v34, v35, v4);
  objc_msgSend_setLookupTable_(v4, v36, v34);

  return v4;
}

- (void)_updateModelFromPresentation
{
  v13.receiver = self;
  v13.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v13 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect, v3);
  self->_saturation = sub_1AF160C84(self->super._cameraEffect, v4);
  self->_contrast = sub_1AF160D20(self->super._cameraEffect, v5);
  self->_whiteBalanceTemperature = sub_1AF160DBC(self->super._cameraEffect, v6);
  *self->_liftColor = sub_1AF162408(self->super._cameraEffect, v7);
  self->_liftOffset = sub_1AF1624AC(self->super._cameraEffect, v8);
  *self->_gammaColor = sub_1AF1628E8(self->super._cameraEffect, v9);
  self->_gammaOffset = sub_1AF16298C(self->super._cameraEffect, v10);
  *self->_gainColor = sub_1AF162A28(self->super._cameraEffect, v11);
  self->_gainOffset = sub_1AF162ACC(self->super._cameraEffect, v12);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B34E4;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v21 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"saturation", v5);
  *&v7 = self->_saturation;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"contrast", v7);
  *&v9 = self->_contrast;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"whiteBalanceTemperature", v9);
  *&v11 = self->_whiteBalanceTemperature;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"whiteBalanceTint", v11);
  sub_1AF371A8C(coder, @"liftColor", *self->_liftColor);
  *&v13 = self->_liftOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"liftOffset", v13);
  sub_1AF371A8C(coder, @"gammaColor", *self->_gammaColor);
  *&v15 = self->_gammaOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"gammaOffset", v15);
  sub_1AF371A8C(coder, @"gainColor", *self->_gainColor);
  *&v17 = self->_gainOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"gainOffset", v17);
  lookupTable = self->_lookupTable;
  if (lookupTable)
  {
    objc_msgSend_encodeObject_forKey_(coder, v19, lookupTable, @"lookupTable");
  }
}

- (VFXCameraEffectColorGrading)initWithCoder:(id)coder
{
  v46.receiver = self;
  v46.super_class = VFXCameraEffectColorGrading;
  v6 = [(VFXCameraEffect *)&v46 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"saturation");
    objc_msgSend_setSaturation_(v6, v10, v11);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"contrast");
    objc_msgSend_setContrast_(v6, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"whiteBalanceTemperature");
    objc_msgSend_setWhiteBalanceTemperature_(v6, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"whiteBalanceTint");
    objc_msgSend_setWhiteBalanceTint_(v6, v19, v20);
    v21 = sub_1AF371BC4(coder, @"liftColor");
    objc_msgSend_setLiftColor_(v6, v22, v23, v21);
    objc_msgSend_decodeFloatForKey_(coder, v24, @"liftOffset");
    objc_msgSend_setLiftOffset_(v6, v25, v26);
    v27 = sub_1AF371BC4(coder, @"gammaColor");
    objc_msgSend_setGammaColor_(v6, v28, v29, v27);
    objc_msgSend_decodeFloatForKey_(coder, v30, @"gammaOffset");
    objc_msgSend_setGammaOffset_(v6, v31, v32);
    v33 = sub_1AF371BC4(coder, @"gainColor");
    objc_msgSend_setGainColor_(v6, v34, v35, v33);
    objc_msgSend_decodeFloatForKey_(coder, v36, @"gainOffset");
    objc_msgSend_setGainOffset_(v6, v37, v38);
    if (objc_msgSend_containsValueForKey_(coder, v39, @"lookupTable"))
    {
      v41 = objc_opt_class();
      v43 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v42, v41, @"lookupTable");
      objc_msgSend_setLookupTable_(v6, v44, v43);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v40, v7);
  }

  return v6;
}

@end