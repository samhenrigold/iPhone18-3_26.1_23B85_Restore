@interface VFXFloor
+ (id)floor;
- (VFXFloor)init;
- (VFXFloor)initWithCoder:(id)coder;
- (VFXFloor)initWithFloorGeometryRef:(__CFXFloor *)ref;
- (float)length;
- (float)reflectionFalloffEnd;
- (float)reflectionFalloffStart;
- (float)reflectionResolutionScaleFactor;
- (float)reflectivity;
- (float)width;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)__createCFObject;
- (unint64_t)reflectionCategoryBitMask;
- (unint64_t)reflectionSampleCount;
- (void)_customDecodingOfVFXFloor:(id)floor;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLength:(float)length;
- (void)setReflectionCategoryBitMask:(unint64_t)mask;
- (void)setReflectionFalloffEnd:(float)end;
- (void)setReflectionFalloffStart:(float)start;
- (void)setReflectionResolutionScaleFactor:(float)factor;
- (void)setReflectionSampleCount:(unint64_t)count;
- (void)setReflectivity:(float)reflectivity;
- (void)setWidth:(float)width;
@end

@implementation VFXFloor

- (uint64_t)__createCFObject
{
  if (qword_1ED73ACD8 != -1)
  {
    sub_1AFDD8384();
  }

  v2 = sub_1AF0D160C(qword_1ED73ACD0, 0xE8uLL);
  sub_1AF1B2AF0(v2);
  *(v2 + 220) = 1065353216;
  *(v2 + 240) = -1;
  v5 = sub_1AF22917C(0, 10, 10, 0, 2.0, -2.0, 0.0, v3, v4);
  sub_1AF1B2C80(v2, v5);
  CFRelease(v5);
  sub_1AF16ED28(v2, v6, 0.25);
  return v2;
}

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_modelRef(self, a2, v2);
  self->_reflectivity = sub_1AF16EC88(v4, v5);
  v8 = objc_msgSend_modelRef(self, v6, v7);
  self->_reflectionFalloffStart = sub_1AF16EDB0(v8, v9);
  v12 = objc_msgSend_modelRef(self, v10, v11);
  self->_reflectionFalloffEnd = sub_1AF16EE80(v12, v13);
  v16 = objc_msgSend_modelRef(self, v14, v15);
  self->_reflectionResolutionScaleFactor = sub_1AF16EF50(v16, v17);
  v20 = objc_msgSend_modelRef(self, v18, v19);
  self->_reflectionCategoryBitMask = sub_1AF16F0D8(v20);
  v21.receiver = self;
  v21.super_class = VFXFloor;
  [(VFXModel *)&v21 _updateModelFromPresentation];
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF31755C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXFloor;
  [(VFXModel *)&v3 _updatePresentationFromModel];
}

- (VFXFloor)init
{
  v3 = [VFXFloor __createCFObject]_0(self, a2);
  v19.receiver = self;
  v19.super_class = VFXFloor;
  v6 = [(VFXModel *)&v19 initWithModelRef:v3];
  if (v6)
  {
    v7 = objc_msgSend_material(VFXMaterial, v4, v5);
    objc_msgSend_setDoubleSided_(v7, v8, 1);
    v11 = objc_msgSend_diffuse(v7, v9, v10);
    objc_msgSend_setMinificationFilter_(v11, v12, 2);
    objc_msgSend_setMagnificationFilter_(v11, v13, 2);
    objc_msgSend_setMipFilter_(v11, v14, 2);
    objc_msgSend_setWrapS_(v11, v15, 2);
    objc_msgSend_setWrapT_(v11, v16, 2);
    objc_msgSend_setFirstMaterial_(v6, v17, v7);
  }

  CFRelease(v3);
  return v6;
}

- (VFXFloor)initWithFloorGeometryRef:(__CFXFloor *)ref
{
  v8.receiver = self;
  v8.super_class = VFXFloor;
  v3 = [(VFXModel *)&v8 initWithModelRef:ref];
  v6 = v3;
  if (v3)
  {
    objc_msgSend__updateModelFromPresentation(v3, v4, v5);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VFXFloor;
  [(VFXModel *)&v2 dealloc];
}

+ (id)floor
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setReflectionResolutionScaleFactor:(float)factor
{
  if (self->_reflectionResolutionScaleFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionResolutionScaleFactor = factor;
    *(self + 176) = *(self + 176) & 0xFD | (2 * (factor != 0.0));
    v5[1] = 3221225472;
    v5[0] = MEMORY[0x1E69E9820];
    v5[2] = sub_1AF317868;
    v5[3] = &unk_1E7A7E270;
    if (factor == 0.0)
    {
      factor = 0.5;
    }

    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setReflectionCategoryBitMask:(unint64_t)mask
{
  if (self->_reflectionCategoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_reflectionCategoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF31793C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)reflectionCategoryBitMask
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionCategoryBitMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16F0D8(v9);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v10);
  }

  return v4;
}

- (void)setWidth:(float)width
{
  if (self->_width != width)
  {
    v7 = v3;
    v8 = v4;
    self->_width = width;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317A98;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = width;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"width", v5);
  }
}

- (float)width
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_width;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16F0B8(v9);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v10);
  }

  return v4;
}

- (void)setLength:(float)length
{
  if (self->_length != length)
  {
    v7 = v3;
    v8 = v4;
    self->_length = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317BFC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"length", v5);
  }
}

- (float)length
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_length;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16F0C8(v9);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v10);
  }

  return v4;
}

- (float)reflectionFalloffEnd
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionFalloffEnd;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16EE80(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setReflectionFalloffEnd:(float)end
{
  if (self->_reflectionFalloffEnd != end)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionFalloffEnd = end;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317DD8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = end;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectionFalloffEnd", v5);
  }
}

- (float)reflectionFalloffStart
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionFalloffStart;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16EDB0(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setReflectionFalloffStart:(float)start
{
  if (self->_reflectionFalloffStart != start)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionFalloffStart = start;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317F34;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = start;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectionFalloffStart", v5);
  }
}

- (float)reflectionResolutionScaleFactor
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionResolutionScaleFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16EF50(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (unint64_t)reflectionSampleCount
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionSampleCount;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16F008(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setReflectionSampleCount:(unint64_t)count
{
  if (self->_reflectionSampleCount != count)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_reflectionSampleCount = count;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF318100;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = count;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)reflectivity
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectivity;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_modelRef(self, v6, v7);
  v4 = sub_1AF16EC88(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setReflectivity:(float)reflectivity
{
  if (self->_reflectivity != reflectivity)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectivity = reflectivity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF31825C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = reflectivity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectivity", v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_begin(VFXTransaction, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  objc_msgSend__setupObjCModelFrom_(v4, v8, self);
  objc_msgSend_reflectivity(self, v9, v10);
  objc_msgSend_setReflectivity_(v4, v11, v12);
  objc_msgSend_reflectionFalloffEnd(self, v13, v14);
  objc_msgSend_setReflectionFalloffEnd_(v4, v15, v16);
  objc_msgSend_reflectionFalloffStart(self, v17, v18);
  objc_msgSend_setReflectionFalloffStart_(v4, v19, v20);
  objc_msgSend_reflectionResolutionScaleFactor(self, v21, v22);
  objc_msgSend_setReflectionResolutionScaleFactor_(v4, v23, v24);
  v27 = objc_msgSend_reflectionSampleCount(self, v25, v26);
  objc_msgSend_setReflectionSampleCount_(v4, v28, v27);
  v31 = objc_msgSend_reflectionCategoryBitMask(self, v29, v30);
  objc_msgSend_setReflectionCategoryBitMask_(v4, v32, v31);
  objc_msgSend_width(self, v33, v34);
  objc_msgSend_setWidth_(v4, v35, v36);
  objc_msgSend_length(self, v37, v38);
  objc_msgSend_setLength_(v4, v39, v40);
  objc_msgSend__copyAnimationsFrom_(v4, v41, self);
  objc_msgSend__copyBindingsFrom_(v4, v42, self);
  objc_msgSend_commitImmediate(VFXTransaction, v43, v44);
  return v4;
}

- (void)_customDecodingOfVFXFloor:(id)floor
{
  v4 = objc_msgSend_modelRef(self, a2, floor);
  self->_reflectivity = sub_1AF16EC88(v4, v5);
  v8 = objc_msgSend_modelRef(self, v6, v7);
  self->_reflectionCategoryBitMask = sub_1AF16F0D8(v8);
}

- (void)encodeWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXFloor;
  [(VFXModel *)&v18 encodeWithCoder:?];
  *&v5 = self->_reflectivity;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"reflectivity", v5);
  *&v7 = self->_reflectionFalloffStart;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"reflectionFalloffStart", v7);
  *&v9 = self->_reflectionFalloffEnd;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"reflectionFalloffEnd", v9);
  *&v11 = self->_width;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"width", v11);
  *&v13 = self->_length;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"length", v13);
  objc_msgSend_encodeInteger_forKey_(coder, v15, self->_reflectionCategoryBitMask, @"reflectionCategoryBitMask");
  if ((*(self + 176) & 2) != 0)
  {
    *&v17 = self->_reflectionResolutionScaleFactor;
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"reflectionResolutionScaleFactor", v17);
  }
}

- (VFXFloor)initWithCoder:(id)coder
{
  v33.receiver = self;
  v33.super_class = VFXFloor;
  v6 = [(VFXModel *)&v33 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXFloor_(v6, v9, coder);
    objc_msgSend_decodeFloatForKey_(coder, v10, @"reflectivity");
    objc_msgSend_setReflectivity_(v6, v11, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"reflectionFalloffStart");
    objc_msgSend_setReflectionFalloffStart_(v6, v14, v15);
    objc_msgSend_decodeFloatForKey_(coder, v16, @"reflectionFalloffEnd");
    objc_msgSend_setReflectionFalloffEnd_(v6, v17, v18);
    objc_msgSend_decodeFloatForKey_(coder, v19, @"width");
    objc_msgSend_setWidth_(v6, v20, v21);
    objc_msgSend_decodeFloatForKey_(coder, v22, @"length");
    objc_msgSend_setLength_(v6, v23, v24);
    if (objc_msgSend_containsValueForKey_(coder, v25, @"reflectionCategoryBitMask"))
    {
      v27 = objc_msgSend_decodeIntegerForKey_(coder, v26, @"reflectionCategoryBitMask");
      objc_msgSend_setReflectionCategoryBitMask_(v6, v28, v27);
    }

    if (objc_msgSend_containsValueForKey_(coder, v26, @"reflectionResolutionScaleFactor"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v29, @"reflectionResolutionScaleFactor");
      if (v31 != 0.0)
      {
        objc_msgSend_setReflectionResolutionScaleFactor_(v6, v29, v30);
        *(v6 + 176) |= 2u;
      }
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v29, v7);
  }

  return v6;
}

@end