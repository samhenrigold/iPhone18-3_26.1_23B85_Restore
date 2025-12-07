@interface MDLTransformScaleOp
- (MDLTransformScaleOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time@<X8>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformScaleOp

- (MDLTransformScaleOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformScaleOp;
  v11 = [(MDLTransformScaleOp *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_animatedValue, data);
    objc_storeStrong(&v12->_name, name);
    v12->_inverse = inverse;
    v13 = v12;
  }

  return v12;
}

- (double)float4x4AtTime:(uint64_t)time
{
  objc_msgSend_float3AtTime_(*(time + 24), v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13.columns[3] = v13.columns[0];
  v13.columns[0] = v13.columns[0].u32[0];
  v13.columns[1].i32[0] = 0;
  v13.columns[1].i64[1] = 0;
  v13.columns[1].i32[1] = v13.columns[3].i32[1];
  v13.columns[2].i64[0] = 0;
  v13.columns[2].i32[3] = 0;
  v13.columns[2].i32[2] = v13.columns[3].i32[2];
  v13.columns[3] = xmmword_239F9C1B0;
  if (*(time + 8))
  {
    v13.columns[0].i64[0] = __invert_f4(v13);
  }

  return *v13.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time@<X8>
{
  v15 = *(self + 24);
  *&v16 = 0;
  if (v15)
  {
    objc_msgSend_double3AtTime_(v15, *&a4, *&a5, *&a6, *&a7, a2, v7, v8, v9, v10, v11, v12, 0.0);
    *&v16 = 0;
    v17 = v21;
    v18 = vextq_s8(v17, v17, 8uLL).u64[0];
    *&v19 = v22;
  }

  else
  {
    v17.i64[0] = 0;
    v18 = 0;
    *&v19 = 0;
  }

  v17.i64[1] = 0;
  *(&v19 + 1) = 0;
  *(&v16 + 1) = v18;
  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    *time = v17;
    *(time + 16) = 0uLL;
    *(time + 32) = v16;
    *(time + 48) = 0uLL;
    *(time + 64) = 0uLL;
    *(time + 80) = v19;
    *(time + 96) = 0;
    *(time + 104) = 0;
    result = 0.0;
    *(time + 112) = xmmword_239F9C570;
  }

  return result;
}

@end