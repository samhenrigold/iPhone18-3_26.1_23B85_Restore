@interface VFXShape
+ (id)shapeWithPath:(id)path extrusionDepth:(float)depth;
- ($CB22053AE18FFFAA163CB47F1C1927D8)params;
- (BOOL)getBoundingBoxMin:(VFXShape *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXShape *)self radius:(SEL)radius;
- (UIBezierPath)chamferProfile;
- (UIBezierPath)path;
- (VFXShape)init;
- (VFXShape)initWithCoder:(id)coder;
- (float)chamferRadius;
- (float)discretizedStraightLineMaxLength;
- (float)extrusionDepth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__CFXShapeGeometry *)ref;
- (id)presentationModel;
- (int64_t)chamferMode;
- (int64_t)primitiveType;
- (uint64_t)__createCFObject;
- (void)_customDecodingOfVFXShape:(id)shape;
- (void)_customEncodingOfVFXShape:(id)shape;
- (void)_updateModelFromPresentation:(__CFXShapeGeometry *)presentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setChamferMode:(int64_t)mode;
- (void)setChamferProfile:(id)profile;
- (void)setChamferRadius:(float)radius;
- (void)setDiscretizedStraightLineMaxLength:(float)length;
- (void)setExtrusionDepth:(float)depth;
- (void)setPath:(id)path;
- (void)setPrimitiveType:(int64_t)type;
@end

@implementation VFXShape

- (uint64_t)__createCFObject
{
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  v2 = sub_1AF0D160C(qword_1ED73ABA8, 0x120uLL);
  sub_1AF1B2AF0(v2);
  *(v2 + 208) = 0;
  *(v2 + 212) = 1065353216;
  *(v2 + 220) = 0;
  *(v2 + 228) = 2139095039;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 120) = off_1F24E8338;
  return v2;
}

- (void)_updateModelFromPresentation:(__CFXShapeGeometry *)presentation
{
  self->_primitiveType = sub_1AF1C5A20(presentation, a2);
  self->_chamferRadius = sub_1AF1C5804(presentation, v5);
  self->_extrusionDepth = sub_1AF1C596C(presentation, v6);
  self->_chamferProfile = sub_1AF1C5AD4(presentation);
  self->_discretizedStraightLineMaxLength = sub_1AF1C58B8(presentation, v7);
  self->_path = sub_1AF16F0D8(presentation);
  self->_chamferMode = sub_1AF1C5750(presentation, v8);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF32B73C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (VFXShape)init
{
  v3 = [VFXShape __createCFObject]_0(self, a2);
  v12.receiver = self;
  v12.super_class = VFXShape;
  v4 = [(VFXModel *)&v12 initWithModelRef:v3];
  v5 = v4;
  if (v4)
  {
    v11.receiver = v4;
    v11.super_class = VFXShape;
    [(VFXModel *)&v11 _updateModelFromPresentation];
    v8 = objc_msgSend_modelRef(v5, v6, v7);
    objc_msgSend__updateModelFromPresentation_(v5, v9, v8);
  }

  CFRelease(v3);
  return v5;
}

- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__CFXShapeGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = VFXShape;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:ref];
}

- (id)presentationModel
{
  v3 = [VFXShape alloc];
  v6 = objc_msgSend_modelRef(self, v4, v5);
  inited = objc_msgSend_initPresentationShapeGeometryWithShapeGeometryRef_(v3, v7, v6);

  return inited;
}

+ (id)shapeWithPath:(id)path extrusionDepth:(float)depth
{
  v6 = objc_alloc_init(self);
  *&v7 = depth;
  objc_msgSend_setExtrusionDepth_(v6, v8, v9, v7);
  objc_msgSend_setPath_(v6, v10, path);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_modelDescription(self, a2, v2);
  v8 = objc_msgSend_path(self, v6, v7);
  objc_msgSend_extrusionDepth(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v4, v12, @"<%@ | path=%@ extrusionDepth=%.3f> ", v5, v8, v11);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_path(self, a2, zone);
  objc_msgSend_extrusionDepth(self, v5, v6);
  v22 = objc_msgSend_shapeWithPath_extrusionDepth_(VFXShape, v7, v4);
  v10 = objc_msgSend_chamferMode(self, v8, v9);
  objc_msgSend_setChamferMode_(v22, v11, v10);
  objc_msgSend_chamferRadius(self, v12, v13);
  objc_msgSend_setChamferRadius_(v22, v14, v15);
  v18 = objc_msgSend_chamferProfile(self, v16, v17);
  objc_msgSend_setChamferProfile_(v22, v19, v18);
  objc_msgSend__setupObjCModelFrom_(v22, v20, self);

  return v22;
}

- (int64_t)chamferMode
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_chamferMode;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C5750(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setChamferMode:(int64_t)mode
{
  if (self->_chamferMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_chamferMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BBC4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)chamferRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_chamferRadius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C5804(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setChamferRadius:(float)radius
{
  if (self->_chamferRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_chamferRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BD18;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"chamferRadius", v5);
  }
}

- (float)discretizedStraightLineMaxLength
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_discretizedStraightLineMaxLength;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C58B8(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setDiscretizedStraightLineMaxLength:(float)length
{
  if (self->_discretizedStraightLineMaxLength != length)
  {
    v7 = v3;
    v8 = v4;
    self->_discretizedStraightLineMaxLength = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BE64;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = length;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)extrusionDepth
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_extrusionDepth;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C596C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setExtrusionDepth:(float)depth
{
  if (self->_extrusionDepth != depth)
  {
    v7 = v3;
    v8 = v4;
    self->_extrusionDepth = depth;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BFB8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = depth;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"extrusionDepth", v5);
  }
}

- (int64_t)primitiveType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_primitiveType;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C5A20(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setPrimitiveType:(int64_t)type
{
  if (self->_primitiveType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_primitiveType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32C0FC;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (UIBezierPath)path
{
  if (objc_msgSend_isPresentationObject(self, a2, v2))
  {
    v6 = objc_msgSend_worldRef(self, v4, v5);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_modelRef(self, v7, v8);
    path = sub_1AF16F0D8(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    path = self->_path;
  }

  v12 = objc_msgSend_copy(path, v4, v5);

  return v12;
}

- (void)setPath:(id)path
{
  self->_path = objc_msgSend_copy(path, v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF32C268;
  v8[3] = &unk_1E7A7E1D0;
  v8[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (UIBezierPath)chamferProfile
{
  if (objc_msgSend_isPresentationObject(self, a2, v2))
  {
    v6 = objc_msgSend_worldRef(self, v4, v5);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_modelRef(self, v7, v8);
    chamferProfile = sub_1AF1C5AD4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    chamferProfile = self->_chamferProfile;
  }

  v12 = objc_msgSend_copy(chamferProfile, v4, v5);

  return v12;
}

- (void)setChamferProfile:(id)profile
{
  self->_chamferProfile = objc_msgSend_copy(profile, v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF32C3E0;
  v8[3] = &unk_1E7A7E1D0;
  v8[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- ($CB22053AE18FFFAA163CB47F1C1927D8)params
{
  retstr->var6 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  result = objc_msgSend_isPresentationObject(self, a3, v3);
  if (result)
  {
    v9 = objc_msgSend_modelRef(self, v7, v8);

    sub_1AF1C5230(v9, retstr, v10);
  }

  else
  {
    retstr->var0 = self->_primitiveType;
    chamferRadius = self->_chamferRadius;
    retstr->var1 = self->_extrusionDepth;
    retstr->var2 = chamferRadius;
    discretizedStraightLineMaxLength = self->_discretizedStraightLineMaxLength;
    retstr->var3 = self->_chamferMode;
    path = self->_path;
    chamferProfile = self->_chamferProfile;
    retstr->var4 = discretizedStraightLineMaxLength;
    retstr->var5 = path;
    retstr->var6 = chamferProfile;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXShape *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, max, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  DWORD2(v20) = 0;
  *&v20 = 0;
  DWORD2(v19) = 0;
  *&v19 = 0;
  v13 = objc_msgSend_modelRef(self, v8, v9);
  if (self)
  {
    objc_msgSend_params(self, v11, v12);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  v15 = sub_1AF1C67A8(v13, &v20, &v19, v17);
  if (v15)
  {
    if (v5)
    {
      *v5 = v20;
    }

    if (v4)
    {
      *v4 = v19;
    }
  }

  if (v10)
  {
    sub_1AF1CEA9C(v10, v14);
  }

  return v15;
}

- (BOOL)getBoundingSphereCenter:(VFXShape *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  v19 = 0uLL;
  v13 = objc_msgSend_modelRef(self, v8, v9);
  if (self)
  {
    objc_msgSend_params(self, v11, v12);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  v15 = sub_1AF1C6804(v13, &v19, v17);
  if (v15)
  {
    if (v5)
    {
      *v5 = v19;
    }

    if (v4)
    {
      *v4 = HIDWORD(v19);
    }
  }

  if (v10)
  {
    sub_1AF1CEA9C(v10, v14);
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXShape;
  [(VFXModel *)&v3 dealloc];
}

- (void)_customDecodingOfVFXShape:(id)shape
{
  v5 = sub_1AF3723C4(shape, @"chamferProfile");
  objc_msgSend_setChamferProfile_(self, v6, v5);
  v8 = sub_1AF3723C4(shape, @"path");

  objc_msgSend_setPath_(self, v7, v8);
}

- (void)_customEncodingOfVFXShape:(id)shape
{
  sub_1AF3721F0(shape, self->_chamferProfile, @"chamferProfile");
  path = self->_path;

  sub_1AF3721F0(shape, path, @"path");
}

- (void)encodeWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = VFXShape;
  [(VFXModel *)&v19 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6))
  {
    v9 = objc_msgSend_modelRef(self, v7, v8);
    objc_msgSend__updateModelFromPresentation_(self, v10, v9);
  }

  objc_msgSend__customEncodingOfVFXShape_(self, v7, coder);
  *&v11 = self->_chamferRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"chamferRadius", v11);
  *&v13 = self->_extrusionDepth;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"extrusionDepth", v13);
  *&v15 = self->_discretizedStraightLineMaxLength;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"discretizedStraightLineMaxLength", v15);
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeInteger_forKey_(coder, v18, self->_chamferMode, @"chamferMode");
}

- (VFXShape)initWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = VFXShape;
  v6 = [(VFXModel *)&v27 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXShape_(v6, v9, coder);
    objc_msgSend_decodeFloatForKey_(coder, v10, @"chamferRadius");
    objc_msgSend_setChamferRadius_(v6, v11, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"extrusionDepth");
    objc_msgSend_setExtrusionDepth_(v6, v14, v15);
    objc_msgSend_decodeFloatForKey_(coder, v16, @"discretizedStraightLineMaxLength");
    objc_msgSend_setDiscretizedStraightLineMaxLength_(v6, v17, v18);
    v20 = objc_msgSend_decodeIntegerForKey_(coder, v19, @"primitiveType");
    objc_msgSend_setPrimitiveType_(v6, v21, v20);
    v23 = objc_msgSend_decodeIntegerForKey_(coder, v22, @"chamferMode");
    objc_msgSend_setChamferMode_(v6, v24, v23);
    objc_msgSend_setImmediateMode_(VFXTransaction, v25, v7);
  }

  return v6;
}

@end