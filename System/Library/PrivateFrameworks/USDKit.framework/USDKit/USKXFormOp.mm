@interface USKXFormOp
- (USKXFormOp)initWithOperation:(UsdGeomXformOp *)operation atTime:(double)time;
- (USKXFormOp)initWithOrientation:(void *)orientation;
- (USKXFormOp)initWithRotationX:(float)x;
- (USKXFormOp)initWithRotationXYZ:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationXZY:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationY:(float)y;
- (USKXFormOp)initWithRotationYXZ:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationYZX:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationZ:(float)z;
- (USKXFormOp)initWithRotationZXY:(USKXFormOp *)self;
- (USKXFormOp)initWithRotationZYX:(USKXFormOp *)self;
- (USKXFormOp)initWithScale:(USKXFormOp *)self;
- (USKXFormOp)initWithTransform:(float32x4_t)transform;
- (USKXFormOp)initWithTranslation:(USKXFormOp *)self;
- (UsdGeomXformOp)addToXformable:(SEL)xformable;
- (double)matrixValue;
- (double)quatValue;
- (double)vectorValue;
@end

@implementation USKXFormOp

- (USKXFormOp)initWithOperation:(UsdGeomXformOp *)operation atTime:(double)time
{
  v9.receiver = self;
  v9.super_class = USKXFormOp;
  v6 = [(USKXFormOp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_opType = *(&operation->var0.var0.var0.var2.var2 + 32);
    v6->_precision = pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetPrecision(operation);
    sub_270312BD4(operation, &v7->_value, time);
  }

  return v7;
}

- (USKXFormOp)initWithTranslation:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x100000004;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithScale:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x100000008;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationX:(float)x
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x100000009;
    v8[1] = &unk_28803FCC3;
    *v8 = x;
    sub_270312D2C(&v4->_value._storage, v8);
    sub_270311D34(v8);
  }

  return v5;
}

- (USKXFormOp)initWithRotationY:(float)y
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x10000000ALL;
    v8[1] = &unk_28803FCC3;
    *v8 = y;
    sub_270312D2C(&v4->_value._storage, v8);
    sub_270311D34(v8);
  }

  return v5;
}

- (USKXFormOp)initWithRotationZ:(float)z
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = USKXFormOp;
  v4 = [(USKXFormOp *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_opType = 0x10000000BLL;
    v8[1] = &unk_28803FCC3;
    *v8 = z;
    sub_270312D2C(&v4->_value._storage, v8);
    sub_270311D34(v8);
  }

  return v5;
}

- (USKXFormOp)initWithRotationXYZ:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000CLL;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationXZY:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000CLL;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationYXZ:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000ELL;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationYZX:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x10000000FLL;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationZXY:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x100000010;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithRotationZYX:(USKXFormOp *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x100000011;
    v5 = &off_28803FBF8 + 2;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithOrientation:(void *)orientation
{
  v6 = *MEMORY[0x277D85DE8];
  v4.receiver = orientation;
  v4.super_class = USKXFormOp;
  v2 = [(USKXFormOp *)&v4 init];
  if (v2)
  {
    *&v2->_opType = 0x100000012;
    v5 = &off_28803FD78;
    operator new();
  }

  return 0;
}

- (USKXFormOp)initWithTransform:(float32x4_t)transform
{
  v9 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = USKXFormOp;
  v5 = [(USKXFormOp *)&v7 init:*&a2];
  if (v5)
  {
    *&v5->_opType = 19;
    v8 = &off_28803FE40 + 2;
    operator new();
  }

  return 0;
}

- (double)vectorValue
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 0.0;
  sub_270313C14(v4, (self + 16));
  sub_270313B0C(v4, &v2);
  sub_270311D34(v4);
  return v2;
}

- (double)quatValue
{
  v7[2] = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  sub_270313C14(v7, (self + 16));
  sub_270313DC0(v7, v6);
  sub_270311D34(v7);
  pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(v6);
  v2.f64[1] = v1;
  v4.f64[1] = v3;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v4).u64[0];
  return result;
}

- (double)matrixValue
{
  v4[2] = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  v1 = sub_270313C14(v4, (self + 16));
  sub_270313F58(v1, v3);
  sub_270311D34(v4);
  return *v3;
}

- (UsdGeomXformOp)addToXformable:(SEL)xformable
{
  retstr->var0.var0.var0.var2.var1.var0.var2.var0 = 0;
  *(&retstr->var0.var0.var0.var2.var2 + 6) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 7) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 4) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 5) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 2) = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 3) = 0u;
  *&retstr->var0.var0.var0.var0 = 0u;
  *(&retstr->var0.var0.var0.var2.var2 + 1) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddXformOp();
  return sub_270314128(retstr, &self->_value, NAN);
}

@end