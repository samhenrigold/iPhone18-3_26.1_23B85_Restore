@interface NSAffineTransform(CAAnimatableValue)
- (void)CA_addValue:()CAAnimatableValue multipliedBy:;
- (void)CA_interpolateValue:()CAAnimatableValue byFraction:;
@end

@implementation NSAffineTransform(CAAnimatableValue)

- (void)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    objc_msgSend_CA_CGAffineTransformValue(self, a2, a3, a4);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v19[0] = v16;
  v19[1] = v17;
  v19[2] = v18;
  if (a3)
  {
    objc_msgSend_CA_CGAffineTransformValue(a3);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  *&v7 = *&CA::Mat2Impl::mat2_mix(&v13, v19, &v16, a4, a5);
  v8 = objc_msgSend_transform(MEMORY[0x1E696AA98], v7);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  [v8 setTransformStruct:&v10];
  return v8;
}

- (void)CA_addValue:()CAAnimatableValue multipliedBy:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    objc_msgSend_CA_CGAffineTransformValue(self, a2);
    v18 = *v25;
    v19 = *&v25[16];
    v20 = v26;
    if (a3)
    {
LABEL_3:
      objc_msgSend_CA_CGAffineTransformValue(a3);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
LABEL_6:
  *v25 = v22;
  *&v25[16] = v23;
  v26 = v24;
  if ((a4 & 0x80000000) != 0)
  {
    v6.f64[0] = *&v25[24];
    v7.f64[0] = *&v25[24];
    v7.f64[1] = *&v25[16];
    v8 = vmulq_f64(v7, *v25);
    v9 = vsubq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0];
    if (v9 != 0.0)
    {
      v10 = 1.0 / v9;
      v11 = vmulq_n_f64(*&v25[8], v10);
      v6.f64[1] = *v25;
      v12 = vmulq_n_f64(v6, v10);
      *v25 = v12.f64[0];
      *&v25[8] = vnegq_f64(v11);
      *&v25[24] = v12.f64[1];
      v13 = vmulq_f64(v26, v11);
      v26 = vmlsq_f64(vextq_s8(v13, v13, 8uLL), v12, v26);
    }

    a4 = -a4;
  }

  CA::Mat2Impl::mat2_pow(v25, a4);
  v16 = vmlaq_n_f64(vmulq_n_f64(v18, *&v25[16]), v19, *&v25[24]);
  v17 = vmlaq_n_f64(vmulq_n_f64(v18, *v25), v19, *&v25[8]);
  v21 = vmlaq_n_f64(vmlaq_n_f64(v20, v18, v26.f64[0]), v19, v26.f64[1]);
  v14 = objc_msgSend_transform(MEMORY[0x1E696AA98]);
  v22 = v17;
  v23 = v16;
  v24 = v21;
  [v14 setTransformStruct:&v22];
  return v14;
}

@end