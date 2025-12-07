@interface NSValue(AVTExtensions)
+ (id)avt_valueWithFloat4x4:()AVTExtensions;
- (double)avt_float4x4Value;
@end

@implementation NSValue(AVTExtensions)

+ (id)avt_valueWithFloat4x4:()AVTExtensions
{
  v7 = vcvt_hight_f64_f32(a2);
  v8 = vcvt_hight_f64_f32(a3);
  v9 = vcvtq_f64_f32(*a4.f32);
  v10 = vcvt_hight_f64_f32(a4);
  v11 = vcvtq_f64_f32(*a5.f32);
  v12 = vcvt_hight_f64_f32(a5);
  v5 = [self valueWithCATransform3D:{vcvtq_f64_f32(*a2.f32), *&v7, vcvtq_f64_f32(*a3.f32), *&v8, *&v9, *&v10, *&v11, *&v12}];

  return v5;
}

- (double)avt_float4x4Value
{
  if (!strcmp([self objCType], "{?=[4]}"))
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    [self getValue:?];
  }

  else if (!strcmp([self objCType], "{CATransform3D=dddddddddddddddd}"))
  {
    [(float64x2_t *)v5 CATransform3DValue];
    v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5[0]), v5[1]);
    v7 = vcvt_hight_f32_f64(vcvt_f32_f64(v5[2]), v5[3]);
    v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v5[4]), v5[5]);
    v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v5[6]), v5[7]);
  }

  else
  {
    v2 = *(MEMORY[0x1E69E9B18] + 16);
    v6 = *MEMORY[0x1E69E9B18];
    v7 = v2;
    v3 = *(MEMORY[0x1E69E9B18] + 48);
    v8 = *(MEMORY[0x1E69E9B18] + 32);
    v9 = v3;
  }

  return *v6.i64;
}

@end