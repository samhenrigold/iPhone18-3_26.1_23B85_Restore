@interface VFXBezierCurveGeometry
+ (id)bezierCurveGeometryWithGeometryRef:(__CFXBezierCurveGeometry *)ref;
- (BOOL)getBoundingSphereCenter:(VFXBezierCurveGeometry *)self radius:(SEL)radius;
- (NSString)name;
- (VFXBezierCurveGeometry)initWithCoder:(id)coder;
- (VFXBezierCurveGeometry)initWithGeometryRef:(__CFXBezierCurveGeometry *)ref;
- (__n128)initWithCGPath:(__n128)path transform:(__n128)transform;
- (double)boundingBox;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (uint64_t)setBoundingBox:(uint64_t)box;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)makeUniqueID;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
@end

@implementation VFXBezierCurveGeometry

- (__n128)initWithCGPath:(__n128)path transform:(__n128)transform
{
  v18.receiver = self;
  v18.super_class = VFXBezierCurveGeometry;
  v8 = [(VFXBezierCurveGeometry *)&v18 init];
  v10 = v8;
  if (v8)
  {
    v11 = sub_1AF15B1E0(v8, v9);
    v10->n128_u64[1] = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v10);
    }

    v12 = MEMORY[0x1B271BCF0](a7);
    v10[1].n128_u64[1] = v12;
    v10[2] = a2;
    v10[3] = path;
    v10[4] = transform;
    v10[5] = a5;
    sub_1AF15B29C(v10->n128_i64[1], v12);
    sub_1AF15B358(v10->n128_u64[1], v10[2], v10[3], v10[4], v10[5]);
  }

  return v10;
}

- (VFXBezierCurveGeometry)initWithGeometryRef:(__CFXBezierCurveGeometry *)ref
{
  v11.receiver = self;
  v11.super_class = VFXBezierCurveGeometry;
  v4 = [(VFXBezierCurveGeometry *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_geometry = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v6 = sub_1AF15B294(ref);
    v4->_cgPath = CFRetain(v6);
    *v4->_anon_20 = sub_1AF15B34C(ref);
    *&v4->_anon_20[16] = v7;
    *&v4->_anon_20[32] = v8;
    *&v4->_anon_20[48] = v9;
  }

  return v4;
}

+ (id)bezierCurveGeometryWithGeometryRef:(__CFXBezierCurveGeometry *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithGeometryRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (void)dealloc
{
  geometry = self->_geometry;
  if (geometry)
  {
    CFRelease(geometry);
    self->_geometry = 0;
  }

  cgPath = self->_cgPath;
  if (cgPath)
  {
    CFRelease(cgPath);
    self->_cgPath = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXBezierCurveGeometry;
  [(VFXBezierCurveGeometry *)&v5 dealloc];
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v6, v7);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2A0BB0;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_name;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend___CFObject(self, v6, v7);
  v4 = sub_1AF16CBEC(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (id)identifier
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF16CD08(v3, v4, v5);
}

- (void)_updateEntityModelFromPresentation
{
  v4 = objc_msgSend___CFObject(self, a2, v2);

  self->_name = sub_1AF16CBEC(v4, v5);
}

- (void)_updateEntityPresentationFromModel
{
  v4 = objc_msgSend___CFObject(self, a2, v2);
  name = self->_name;

  sub_1AF16CC34(v4, name);
}

- (void)makeUniqueID
{
  v3 = objc_msgSend___CFObject(self, a2, v2);
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  sub_1AF16CD6C(v3, v9);
}

- (double)boundingBox
{
  v9 = VFXNullBoundingBox;
  v10 = *algn_1AFE47750;
  v4 = objc_msgSend_worldRef(self, v1, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    sub_1AF1C3958(self[1], 0, &v9, &v10);
    sub_1AF1CEA9C(v6, v7);
  }

  else
  {
    sub_1AF1C3958(self[1], 0, &v9, &v10);
  }

  return *&v9;
}

- (uint64_t)setBoundingBox:(uint64_t)box
{
  v2 = sub_1AF0D5194(box, a2);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDF4D5C(v2);
  }

  return result;
}

- (BOOL)getBoundingSphereCenter:(VFXBezierCurveGeometry *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2);
  v9 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  v13 = 0uLL;
  v11 = sub_1AF1C39FC(self->_geometry, 0, &v13);
  if (v11)
  {
    if (v5)
    {
      *v5 = v13;
    }

    if (v4)
    {
      *v4 = HIDWORD(v13);
    }
  }

  if (v9)
  {
    sub_1AF1CEA9C(v9, v10);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithCGPath_transform_(v4, v5, self->_cgPath, *self->_anon_20, *&self->_anon_20[16], *&self->_anon_20[32], *&self->_anon_20[48]);
  v9 = objc_msgSend_name(self, v7, v8);
  objc_msgSend_setName_(v6, v10, v9);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  sub_1AF3720A0(coder, self->_cgPath, @"path");
  sub_1AF371B50(coder, @"transform", *self->_anon_20, *&self->_anon_20[16], *&self->_anon_20[32], *&self->_anon_20[48]);
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_name, @"name");

  sub_1AF372440(coder, self, v6);
}

- (VFXBezierCurveGeometry)initWithCoder:(id)coder
{
  v36.receiver = self;
  v36.super_class = VFXBezierCurveGeometry;
  v6 = [(VFXBezierCurveGeometry *)&v36 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v9 = sub_1AF372254(coder, @"path");
    v10 = sub_1AF371C4C(coder, @"transform");
    v27 = v11;
    v28 = v10;
    v25 = v13;
    v26 = v12;
    v16 = sub_1AF15B1E0(v14, v15);
    v6->_geometry = v16;
    if (v16)
    {
      sub_1AF16CDFC(v16, v6);
    }

    if (v9)
    {
      v18 = CFRetain(v9);
    }

    else
    {
      v18 = 0;
    }

    v6->_cgPath = v18;
    *v6->_anon_20 = v28;
    *&v6->_anon_20[16] = v27;
    *&v6->_anon_20[32] = v26;
    *&v6->_anon_20[48] = v25;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF2A1124;
    v29[3] = &unk_1E7A7E548;
    v34 = v6;
    v35 = v9;
    v30 = v28;
    v31 = v27;
    v32 = v26;
    v33 = v25;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, v6, v29, v25, v26, v27, *&v28);
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"name");
    objc_msgSend_setName_(v6, v22, v21);
    sub_1AF37249C(coder, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v23, v7);
  }

  return v6;
}

@end