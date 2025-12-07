@interface MDLTransformTranslateOp
- (MDLTransformTranslateOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)float4x4AtTime:(uint64_t)time;
- (void)double4x4AtTime:(_OWORD *)time@<X8>;
@end

@implementation MDLTransformTranslateOp

- (MDLTransformTranslateOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformTranslateOp;
  v11 = [(MDLTransformTranslateOp *)&v15 init];
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
  v13.columns[0] = *MEMORY[0x277D860B8];
  v13.columns[3].i32[3] = 1.0;
  if (*(time + 8))
  {
    v13.columns[1] = *(MEMORY[0x277D860B8] + 16);
    v13.columns[2] = *(MEMORY[0x277D860B8] + 32);
    v13.columns[0].i64[0] = __invert_f4(v13);
  }

  return *v13.columns[0].i64;
}

- (void)double4x4AtTime:(_OWORD *)time@<X8>
{
  result = *(self + 24);
  if (result)
  {
    result = objc_msgSend_double3AtTime_(result, v17, v18, v19, v20, a2, v11, v12, v13, v14, v15, v16);
    v24 = v31;
    v25 = vextq_s8(v24, v24, 8uLL).u64[0];
    *&v26 = vars0;
  }

  else
  {
    v24.i64[0] = 0;
    v25 = 0;
    *&v26 = 0;
  }

  v24.i64[1] = v25;
  *(&v26 + 1) = 1.0;
  if (*(self + 8))
  {
    return __invert_d4();
  }

  v27 = MEMORY[0x277D860A0];
  v28 = *(MEMORY[0x277D860A0] + 48);
  time[2] = *(MEMORY[0x277D860A0] + 32);
  time[3] = v28;
  v29 = v27[5];
  time[4] = v27[4];
  time[5] = v29;
  v30 = v27[1];
  *time = *v27;
  time[1] = v30;
  time[6] = v24;
  time[7] = v26;
  return result;
}

@end