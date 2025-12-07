@interface MDLTransformOrientOp
- (MDLTransformOrientOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time@<X8>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformOrientOp

- (MDLTransformOrientOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformOrientOp;
  v11 = [(MDLTransformOrientOp *)&v15 init];
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
  objc_msgSend_floatQuaternionAtTime_(*(time + 24), v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v24.columns[1] = v24.columns[0];
  v24.columns[3].f32[0] = vmulq_f32(v24.columns[0], v24.columns[0]).f32[0];
  v13 = v24.columns[0].f32[1];
  v14 = vmuls_lane_f32(v24.columns[0].f32[1], *v24.columns[0].f32, 1);
  v15 = vmuls_lane_f32(v24.columns[0].f32[2], v24.columns[0], 2);
  v16 = vmuls_lane_f32(v24.columns[0].f32[3], v24.columns[0], 3);
  v17 = vmuls_lane_f32(v24.columns[1].f32[0], *v24.columns[1].f32, 1);
  v18 = vmuls_lane_f32(v24.columns[0].f32[2], v24.columns[0], 3);
  v19 = vmuls_lane_f32(v24.columns[1].f32[0], v24.columns[1], 2);
  v20 = vmuls_lane_f32(v24.columns[0].f32[1], v24.columns[0], 3);
  v24.columns[2].i32[3] = 0;
  v24.columns[0].i32[3] = 0;
  v24.columns[0].f32[0] = (v24.columns[3].f32[0] - (v14 + v15)) + v16;
  v24.columns[0].f32[1] = (v17 + v18) + (v17 + v18);
  v21 = (v17 - v18) + (v17 - v18);
  v22 = vmuls_lane_f32(v13, v24.columns[1], 2);
  v23 = vmuls_lane_f32(v24.columns[1].f32[0], v24.columns[1], 3);
  v24.columns[1].i32[3] = 0;
  v24.columns[1].f32[0] = v21;
  v24.columns[1].f32[1] = (v14 + v16) - (v15 + v24.columns[3].f32[0]);
  v24.columns[2].f32[0] = (v19 + v20) + (v19 + v20);
  v24.columns[2].f32[1] = (v22 - v23) + (v22 - v23);
  v24.columns[2].f32[2] = (v15 + v16) - (v24.columns[3].f32[0] + v14);
  v24.columns[3] = xmmword_239F9C1B0;
  if (*(time + 8))
  {
    v24.columns[0].f32[2] = (v19 - v20) + (v19 - v20);
    v24.columns[1].f32[2] = (v22 + v23) + (v22 + v23);
    v24.columns[0].i64[0] = __invert_f4(v24);
  }

  return *v24.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time@<X8>
{
  v15 = *(self + 24);
  if (v15)
  {
    objc_msgSend_doubleQuaternionAtTime_(v15, v9, v10, v11, v12, a2, v3, v4, v5, v6, v7, v8);
    v16 = v33;
    v17 = v34;
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v18 = vmuld_n_f64(v16.f64[0], v16.f64[0]);
  v19 = vmuld_lane_f64(v16.f64[1], v16, 1);
  v20 = vmuld_n_f64(v17.f64[0], v17.f64[0]);
  v21 = vmuld_lane_f64(v17.f64[1], v17, 1);
  *&v26 = v18 - (v19 + v20) + v21;
  v22 = vmuld_lane_f64(v16.f64[0], v16, 1);
  v23 = vmuld_lane_f64(v17.f64[0], v17, 1);
  v24 = vmuld_n_f64(v16.f64[0], v17.f64[0]);
  v25 = vmuld_lane_f64(v16.f64[1], v17, 1);
  *(&v26 + 1) = v22 + v23 + v22 + v23;
  *(&v27 + 1) = 0;
  *&v28 = v22 - v23 + v22 - v23;
  v29 = vmuld_lane_f64(v17.f64[0], v16, 1);
  v30 = vmuld_lane_f64(v16.f64[0], v17, 1);
  v16.f64[1] = 0.0;
  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    *time = v26;
    *&v27 = v24 - v25 + v24 - v25;
    *(time + 16) = v27;
    *(&v28 + 1) = v19 + v21 - (v20 + v18);
    *(time + 32) = v28;
    v16.f64[0] = v29 + v30 + v29 + v30;
    *(time + 48) = v16;
    *(&v31 + 1) = v29 - v30 + v29 - v30;
    *&v31 = v24 + v25 + v24 + v25;
    *(time + 64) = v31;
    *(time + 80) = COERCE_UNSIGNED_INT64(v20 + v21 - (v18 + v19));
    *(time + 96) = 0;
    *(time + 104) = 0;
    result = 0.0;
    *(time + 112) = xmmword_239F9C570;
  }

  return result;
}

@end