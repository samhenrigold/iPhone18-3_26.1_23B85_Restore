@interface MDLTransformRotateXOp
- (MDLTransformRotateXOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformRotateXOp

- (MDLTransformRotateXOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformRotateXOp;
  v11 = [(MDLTransformRotateXOp *)&v15 init];
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
  objc_msgSend_floatAtTime_(*(time + 24), v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  memset(v27, 0, sizeof(v27));
  v14.f64[0] = 0.0;
  sub_239ED2C10(v27, v13 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, v14);
  v15 = 0;
  memset(&v26, 0, sizeof(v26));
  do
  {
    v16 = 0;
    v17 = &v27[2 * v15];
    v19 = *v17;
    v18 = v17[1];
    v20 = v26.columns[v15];
    do
    {
      v25[0] = v19;
      v25[1] = v18;
      v21 = *(v25 + (v16 & 3));
      v24 = v20;
      *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) = v21;
      v20 = v24;
      ++v16;
    }

    while (v16 != 4);
    v26.columns[v15++] = v24;
  }

  while (v15 != 4);
  v22 = v26;
  if (*(time + 8))
  {
    v22.columns[0].i64[0] = __invert_f4(v22);
  }

  return *v22.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time
{
  objc_msgSend_doubleAtTime_(*(self + 24), v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  vars0 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34.f64[0] = 0.0;
  sub_239ED2C10(&v37, v33 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, v34);
  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    a2[4] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    v36 = v38;
    *a2 = v37;
    a2[1] = v36;
    result = *&vars0;
    a2[2] = vars0;
    a2[3] = 0u;
  }

  return result;
}

@end