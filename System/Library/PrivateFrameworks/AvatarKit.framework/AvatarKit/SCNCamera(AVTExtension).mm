@interface SCNCamera(AVTExtension)
- (float32x2_t)avt_simdPostProjectionTransform;
@end

@implementation SCNCamera(AVTExtension)

- (float32x2_t)avt_simdPostProjectionTransform
{
  memset(v8, 0, sizeof(v8));
  [(float64x2_t *)v8 postProjectionTransform];
  result = vcvt_f32_f64(v8[0]);
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

@end