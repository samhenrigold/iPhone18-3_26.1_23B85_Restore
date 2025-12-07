@interface ARFrame(ARFrame_NormalizedImagePoint)
- (float32x2_t)normalizedImagePointForScreenPoint:()ARFrame_NormalizedImagePoint viewportSize:orientation:;
@end

@implementation ARFrame(ARFrame_NormalizedImagePoint)

- (float32x2_t)normalizedImagePointForScreenPoint:()ARFrame_NormalizedImagePoint viewportSize:orientation:
{
  v5 = *&a3 / a4;
  v14 = v5;
  v6 = *(&a3 + 1) / a5;
  v13 = v6;
  objc_msgSend_displayTransformForOrientation_viewportSize_(self, a2, a4, a5);
  *v15.columns[1].f32 = vcvt_f32_f64(0);
  v15.columns[0] = v15.columns[1].u64[0];
  v15.columns[1] = v15.columns[1].u64[0];
  v15.columns[2].i64[0] = v15.columns[0].i64[0];
  __asm { FMOV            V3.2S, #1.0 }

  v15.columns[2].i64[1] = _D3;
  v16 = __invert_f3(v15);
  return vadd_f32(*v16.columns[2].f32, *&vmlaq_n_f32(vmulq_n_f32(v16.columns[0], v14), v16.columns[1], v13));
}

@end