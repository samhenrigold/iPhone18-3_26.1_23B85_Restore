@interface VFXCameraEffectChromaticTransform
+ (id)chromaticTransform;
- (BOOL)maskEnabled;
- (BOOL)rawFloat2ForKey:(id)key value:;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (VFXCameraEffectChromaticTransform)initWithCoder:(id)coder;
- (__n128)color1;
- (__n128)color2;
- (__n128)color3;
- (double)center;
- (double)createCFXObject;
- (double)fromShift;
- (double)maskCenter;
- (double)toShift;
- (float)fromAngle;
- (float)fromZ;
- (float)intensity;
- (float)maskRadius;
- (float)toAngle;
- (float)toZ;
- (float)unMultBlending;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (int64_t)sampleCount;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setCenter:(VFXCameraEffectChromaticTransform *)self;
- (void)setColor1:(VFXCameraEffectChromaticTransform *)self;
- (void)setColor2:(VFXCameraEffectChromaticTransform *)self;
- (void)setColor3:(VFXCameraEffectChromaticTransform *)self;
- (void)setFromAngle:(float)angle;
- (void)setFromShift:(VFXCameraEffectChromaticTransform *)self;
- (void)setFromZ:(float)z;
- (void)setIntensity:(float)intensity;
- (void)setMaskCenter:(VFXCameraEffectChromaticTransform *)self;
- (void)setMaskEnabled:(BOOL)enabled;
- (void)setMaskRadius:(float)radius;
- (void)setSampleCount:(int64_t)count;
- (void)setToAngle:(float)angle;
- (void)setToShift:(VFXCameraEffectChromaticTransform *)self;
- (void)setToZ:(float)z;
- (void)setUnMultBlending:(float)blending;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXCameraEffectChromaticTransform

- (double)createCFXObject
{
  if (qword_1ED73AE38 != -1)
  {
    sub_1AFDD6EB0();
  }

  v2 = sub_1AF0D160C(qword_1ED73AE30, 0xC0uLL);
  *(v2 + 64) = 1;
  *(v2 + 72) = 32;
  *(v2 + 80) = 1065353216;
  result = 0.0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1065353216;
  *(v2 + 104) = 0;
  *(v2 + 112) = 1067030938;
  *(v2 + 120) = 0;
  *(v2 + 128) = xmmword_1AFE20150;
  *(v2 + 144) = xmmword_1AFE20160;
  *(v2 + 160) = xmmword_1AFE20180;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1065353216;
  *(v2 + 188) = 0;
  *(v2 + 192) = 0;
  return result;
}

- (int64_t)sampleCount
{
  if (!self->super._isPresentationObject)
  {
    return self->_sampleCount;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1633E8(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setSampleCount:(int64_t)count
{
  if (self->super._isPresentationObject || self->_sampleCount != count)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_sampleCount = count;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B4044;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"sampleCount", v5);
  }
}

- (float)intensity
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
  v11 = sub_1AF160D20(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setIntensity:(float)intensity
{
  if (self->super._isPresentationObject || self->_intensity != intensity)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B41A4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (double)center
{
  if (*(self + 28) != 1)
  {
    return *(self + 80);
  }

  v4 = objc_msgSend_worldRef(self, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF1634FC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setCenter:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceq_f32(*&self->_center[4], v2), (vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0))
  {
    *&self->_center[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B430C;
    v4[3] = &unk_1E7A7E248;
    v4[4] = self;
    v4[5] = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"center", v4);
  }
}

- (float)fromZ
{
  if (!self->super._isPresentationObject)
  {
    return self->_fromAngle;
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

- (void)setFromZ:(float)z
{
  if (self->super._isPresentationObject || self->_fromAngle != z)
  {
    v7 = v3;
    v8 = v4;
    self->_fromAngle = z;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B446C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = z;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fromZ", v5);
  }
}

- (float)fromAngle
{
  if (!self->super._isPresentationObject)
  {
    return *self->_fromShift;
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

- (void)setFromAngle:(float)angle
{
  if (self->super._isPresentationObject || *self->_fromShift != angle)
  {
    v7 = v3;
    v8 = v4;
    *self->_fromShift = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B45CC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fromAngle", v5);
  }
}

- (double)fromShift
{
  if (*(self + 28) != 1)
  {
    return *(self + 96);
  }

  v4 = objc_msgSend_worldRef(self, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF163598(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setFromShift:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceq_f32(*&self->_fromShift[4], v2), (vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0))
  {
    *&self->_fromShift[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B4734;
    v4[3] = &unk_1E7A7E248;
    v4[4] = self;
    v4[5] = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fromShift", v4);
  }
}

- (float)toZ
{
  if (!self->super._isPresentationObject)
  {
    return self->_toAngle;
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

- (void)setToZ:(float)z
{
  if (self->super._isPresentationObject || self->_toAngle != z)
  {
    v7 = v3;
    v8 = v4;
    self->_toAngle = z;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B4894;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = z;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toZ", v5);
  }
}

- (float)toAngle
{
  if (!self->super._isPresentationObject)
  {
    return *self->_toShift;
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

- (void)setToAngle:(float)angle
{
  if (self->super._isPresentationObject || *self->_toShift != angle)
  {
    v7 = v3;
    v8 = v4;
    *self->_toShift = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B49F4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toAngle", v5);
  }
}

- (double)toShift
{
  if (*(self + 28) != 1)
  {
    return *(self + 112);
  }

  v4 = objc_msgSend_worldRef(self, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF163634(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setToShift:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceq_f32(*&self->_toShift[4], v2), (vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0))
  {
    *&self->_toShift[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B4B5C;
    v4[3] = &unk_1E7A7E248;
    v4[4] = self;
    v4[5] = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toShift", v4);
  }
}

- (__n128)color1
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
    return self[8];
  }

  return result;
}

- (void)setColor1:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*&self->_color1[4], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_color1[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B4CC8;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"color1", v4);
  }
}

- (__n128)color2
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
    result = sub_1AF1636D0(v8, v9);
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

- (void)setColor2:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*&self->_color2[4], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_color2[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B4E34;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"color2", v4);
  }
}

- (__n128)color3
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
    return self[10];
  }

  return result;
}

- (void)setColor3:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*&self->_color3[4], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_color3[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B4FA0;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"color3", v4);
  }
}

- (double)maskCenter
{
  if (*(self + 28) != 1)
  {
    return *(self + 176);
  }

  v4 = objc_msgSend_worldRef(self, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_cfxObject(self, v5, v6);
  v11 = sub_1AF163774(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setMaskCenter:(VFXCameraEffectChromaticTransform *)self
{
  if (self->super._isPresentationObject || (v3 = vceq_f32(*&self->_maskCenter[4], v2), (vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0))
  {
    *&self->_maskCenter[4] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B5108;
    v4[3] = &unk_1E7A7E248;
    v4[4] = self;
    v4[5] = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskCenter", v4);
  }
}

- (float)maskRadius
{
  if (!self->super._isPresentationObject)
  {
    return *&self->_maskEnabled;
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

- (void)setMaskRadius:(float)radius
{
  if (self->super._isPresentationObject || *&self->_maskEnabled != radius)
  {
    v7 = v3;
    v8 = v4;
    *&self->_maskEnabled = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B5268;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskRadius", v5);
  }
}

- (BOOL)maskEnabled
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
    unMultBlending_low = sub_1AF163864(v8, v9);
    if (v7)
    {
      sub_1AF1CEA9C(v7, v10);
    }
  }

  else
  {
    unMultBlending_low = LOBYTE(self->_unMultBlending);
  }

  return unMultBlending_low & 1;
}

- (void)setMaskEnabled:(BOOL)enabled
{
  if (self->super._isPresentationObject || LOBYTE(self->_unMultBlending) != enabled)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_unMultBlending) = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B53C4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    enabledCopy = enabled;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskEnabled", v5);
  }
}

- (float)unMultBlending
{
  if (!self->super._isPresentationObject)
  {
    return *&self[1].super.super.isa;
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

- (void)setUnMultBlending:(float)blending
{
  if (self->super._isPresentationObject || *&self[1].super.super.isa != blending)
  {
    v7 = v3;
    v8 = v4;
    *&self[1].super.super.isa = blending;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B5524;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = blending;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"unMultBlending", v5);
  }
}

+ (id)chromaticTransform
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)rawFloat2ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"center"))
  {
    objc_msgSend_center(self, v7, v8);
LABEL_9:
    *v4 = v9;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"fromShift"))
  {
    objc_msgSend_fromShift(self, v10, v11);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(key, v10, @"toShift"))
  {
    objc_msgSend_toShift(self, v12, v13);
    goto LABEL_9;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v12, @"maskCenter");
  if (isEqualToString)
  {
    objc_msgSend_maskCenter(self, v15, v16);
    goto LABEL_9;
  }

  return isEqualToString;
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"color1"))
  {
    objc_msgSend_color1(self, v7, v8);
LABEL_7:
    *v4 = v9;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"color2"))
  {
    objc_msgSend_color2(self, v10, v11);
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v10, @"color3");
  if (isEqualToString)
  {
    objc_msgSend_color3(self, v13, v14);
    goto LABEL_7;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"color1"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_color1(self, v5, v6);
LABEL_7:

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  if (objc_msgSend_isEqualToString_(key, v5, @"color2"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_color2(self, v10, v11);
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(key, v10, @"color3"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_color3(self, v12, v13);
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(key, v12, @"center"))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_center(self, v15, v16);
  }

  else if (objc_msgSend_isEqualToString_(key, v15, @"fromShift"))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_fromShift(self, v19, v20);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"toShift"))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_toShift(self, v21, v22);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v21, @"maskCenter"))
    {
      v25.receiver = self;
      v25.super_class = VFXCameraEffectChromaticTransform;
      return [(VFXCameraEffectChromaticTransform *)&v25 valueForKey:key];
    }

    v17 = MEMORY[0x1E696B098];
    objc_msgSend_maskCenter(self, v23, v24);
  }

  return MEMORY[0x1EEE66B58](v17, sel_valueWithVFXFloat2_, v18);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"color1"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setColor1_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"color2"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setColor2_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"color3"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    objc_msgSend_setColor3_(self, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v15, @"center"))
  {
    objc_msgSend_VFXFloat2Value(value, v19, v20);

    objc_msgSend_setCenter_(self, v21, v22);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"fromShift"))
  {
    objc_msgSend_VFXFloat2Value(value, v23, v24);

    objc_msgSend_setFromShift_(self, v25, v26);
  }

  else if (objc_msgSend_isEqualToString_(key, v23, @"toShift"))
  {
    objc_msgSend_VFXFloat2Value(value, v27, v28);

    objc_msgSend_setToShift_(self, v29, v30);
  }

  else if (objc_msgSend_isEqualToString_(key, v27, @"maskCenter"))
  {
    objc_msgSend_VFXFloat2Value(value, v31, v32);

    objc_msgSend_setMaskCenter_(self, v33, v34);
  }

  else
  {
    v35.receiver = self;
    v35.super_class = VFXCameraEffectChromaticTransform;
    [(VFXCameraEffectChromaticTransform *)&v35 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v43.receiver = self;
  v43.super_class = VFXCameraEffectChromaticTransform;
  v4 = [(VFXCameraEffect *)&v43 copyWithZone:zone];
  objc_msgSend_setSampleCount_(v4, v5, self->_sampleCount);
  *&v6 = self->_intensity;
  objc_msgSend_setIntensity_(v4, v7, v8, v6);
  objc_msgSend_setCenter_(v4, v9, v10, *&self->_center[4]);
  *&v11 = self->_fromAngle;
  objc_msgSend_setFromZ_(v4, v12, v13, v11);
  LODWORD(v14) = *self->_fromShift;
  objc_msgSend_setFromAngle_(v4, v15, v16, v14);
  objc_msgSend_setFromShift_(v4, v17, v18, *&self->_fromShift[4]);
  *&v19 = self->_toAngle;
  objc_msgSend_setToZ_(v4, v20, v21, v19);
  LODWORD(v22) = *self->_toShift;
  objc_msgSend_setToAngle_(v4, v23, v24, v22);
  objc_msgSend_setToShift_(v4, v25, v26, *&self->_toShift[4]);
  objc_msgSend_setColor1_(v4, v27, v28, *&self->_color1[4]);
  objc_msgSend_setColor2_(v4, v29, v30, *&self->_color2[4]);
  objc_msgSend_setColor3_(v4, v31, v32, *&self->_color3[4]);
  objc_msgSend_setMaskCenter_(v4, v33, v34, *&self->_maskCenter[4]);
  LODWORD(v35) = *&self->_maskEnabled;
  objc_msgSend_setMaskRadius_(v4, v36, v37, v35);
  objc_msgSend_setMaskEnabled_(v4, v38, LOBYTE(self->_unMultBlending));
  LODWORD(v39) = self[1].super.super.isa;
  objc_msgSend_setUnMultBlending_(v4, v40, v41, v39);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v19.receiver = self;
  v19.super_class = VFXCameraEffectChromaticTransform;
  [(VFXCameraEffect *)&v19 _updateModelFromPresentation];
  self->_sampleCount = sub_1AF1633E8(self->super._cameraEffect, v3);
  self->_intensity = sub_1AF160D20(self->super._cameraEffect, v4);
  *&self->_center[4] = sub_1AF1634FC(self->super._cameraEffect, v5);
  self->_fromAngle = sub_1AF16158C(self->super._cameraEffect, v6);
  *self->_fromShift = sub_1AF161628(self->super._cameraEffect, v7);
  *&self->_fromShift[4] = sub_1AF163598(self->super._cameraEffect, v8);
  self->_toAngle = sub_1AF1624AC(self->super._cameraEffect, v9);
  *self->_toShift = sub_1AF162548(self->super._cameraEffect, v10);
  *&self->_toShift[4] = sub_1AF163634(self->super._cameraEffect, v11);
  *&self->_color1[4] = sub_1AF1628E8(self->super._cameraEffect, v12);
  *&self->_color2[4] = sub_1AF1636D0(self->super._cameraEffect, v13);
  *&self->_color3[4] = sub_1AF162A28(self->super._cameraEffect, v14);
  *&self->_maskCenter[4] = sub_1AF163774(self->super._cameraEffect, v15);
  *&self->_maskEnabled = sub_1AF161A84(self->super._cameraEffect, v16);
  LOBYTE(self->_unMultBlending) = sub_1AF163864(self->super._cameraEffect, v17);
  *&self[1].super.super.isa = sub_1AF161BCC(self->super._cameraEffect, v18);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B5E34;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = VFXCameraEffectChromaticTransform;
  [(VFXCameraEffect *)&v22 encodeWithCoder:?];
  *&v5 = self->_sampleCount;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"sampleCount", v5);
  *&v7 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"intensity", v7);
  sub_1AF371A30(coder, @"center", *&self->_center[4]);
  *&v9 = self->_fromAngle;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"fromZ", v9);
  LODWORD(v11) = *self->_fromShift;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"fromAngle", v11);
  sub_1AF371A30(coder, @"fromShift", *&self->_fromShift[4]);
  *&v13 = self->_toAngle;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"toZ", v13);
  LODWORD(v15) = *self->_toShift;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"toAngle", v15);
  sub_1AF371A30(coder, @"toShift", *&self->_toShift[4]);
  sub_1AF371A8C(coder, @"color1", *&self->_color1[4]);
  sub_1AF371A8C(coder, @"color2", *&self->_color2[4]);
  sub_1AF371A8C(coder, @"color3", *&self->_color3[4]);
  sub_1AF371A30(coder, @"maskCenter", *&self->_maskCenter[4]);
  LODWORD(v17) = *&self->_maskEnabled;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"maskRadius", v17);
  objc_msgSend_encodeBool_forKey_(coder, v19, LOBYTE(self->_unMultBlending), @"maskEnabled");
  LODWORD(v20) = self[1].super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"unMultBlending", v20);
}

- (VFXCameraEffectChromaticTransform)initWithCoder:(id)coder
{
  v59.receiver = self;
  v59.super_class = VFXCameraEffectChromaticTransform;
  v6 = [(VFXCameraEffect *)&v59 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"sampleCount");
    objc_msgSend_setSampleCount_(v6, v11, v10);
    objc_msgSend_decodeFloatForKey_(coder, v12, @"intensity");
    objc_msgSend_setIntensity_(v6, v13, v14);
    v15 = sub_1AF371B84(coder, @"center");
    objc_msgSend_setCenter_(v6, v16, v17, v15);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"fromZ");
    objc_msgSend_setFromZ_(v6, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"fromAngle");
    objc_msgSend_setFromAngle_(v6, v22, v23);
    v24 = sub_1AF371B84(coder, @"fromShift");
    objc_msgSend_setFromShift_(v6, v25, v26, v24);
    objc_msgSend_decodeFloatForKey_(coder, v27, @"toZ");
    objc_msgSend_setToZ_(v6, v28, v29);
    objc_msgSend_decodeFloatForKey_(coder, v30, @"toAngle");
    objc_msgSend_setToAngle_(v6, v31, v32);
    v33 = sub_1AF371B84(coder, @"toShift");
    objc_msgSend_setToShift_(v6, v34, v35, v33);
    v36 = sub_1AF371BC4(coder, @"color1");
    objc_msgSend_setColor1_(v6, v37, v38, v36);
    v39 = sub_1AF371BC4(coder, @"color2");
    objc_msgSend_setColor2_(v6, v40, v41, v39);
    v42 = sub_1AF371BC4(coder, @"color3");
    objc_msgSend_setColor3_(v6, v43, v44, v42);
    v45 = sub_1AF371B84(coder, @"maskCenter");
    objc_msgSend_setMaskCenter_(v6, v46, v47, v45);
    objc_msgSend_decodeFloatForKey_(coder, v48, @"maskRadius");
    objc_msgSend_setMaskRadius_(v6, v49, v50);
    v52 = objc_msgSend_decodeBoolForKey_(coder, v51, @"maskEnabled");
    objc_msgSend_setMaskEnabled_(v6, v53, v52);
    objc_msgSend_decodeFloatForKey_(coder, v54, @"unMultBlending");
    objc_msgSend_setUnMultBlending_(v6, v55, v56);
    objc_msgSend_setImmediateMode_(VFXTransaction, v57, v7);
  }

  return v6;
}

@end