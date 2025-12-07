@interface UIColor(AVTAdditions)
- (__n64)avt_colorToColor4;
@end

@implementation UIColor(AVTAdditions)

- (__n64)avt_colorToColor4
{
  cGColor = [self CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  Components = CGColorGetComponents(cGColor);
  *v4.i32 = Components->f64[0];
  if (NumberOfComponents == 3)
  {
    v6 = Components->f64[1];
    __asm { FMOV            V0.4S, #1.0 }

    result.n64_f32[0] = Components->f64[0];
    result.n64_f32[1] = v6;
  }

  else if (NumberOfComponents == 2 || NumberOfComponents == 1)
  {
    return vdupq_lane_s32(v4, 0).u64[0];
  }

  else
  {
    *&v12 = Components->f64[1];
    v4.i32[1] = v12;
    return vcvt_hight_f32_f64(v4, Components[1]).u64[0];
  }

  return result;
}

@end