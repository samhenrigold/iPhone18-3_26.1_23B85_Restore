@interface MDLTransformMatrixOp
- (MDLTransformMatrixOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(_OWORD *)time@<X8>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformMatrixOp

- (MDLTransformMatrixOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformMatrixOp;
  v11 = [(MDLTransformMatrixOp *)&v15 init];
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
  objc_msgSend_float4x4AtTime_(*(time + 24), v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (*(time + 8))
  {
    v13.columns[0].i64[0] = __invert_f4(v13);
  }

  return *v13.columns[0].i64;
}

- (double)double4x4AtTime:(_OWORD *)time@<X8>
{
  vars0 = 0u;
  v32 = *(self + 24);
  if (v32)
  {
    objc_msgSend_double4x4AtTime_(v32, v27, 0, v28, v29, a2, v21, v22, v23, v24, v25, v26);
  }

  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    time[4] = 0u;
    time[5] = 0u;
    time[6] = 0u;
    time[7] = 0u;
    *time = 0u;
    time[1] = 0u;
    result = 0.0;
    time[2] = 0u;
    time[3] = 0u;
  }

  return result;
}

@end