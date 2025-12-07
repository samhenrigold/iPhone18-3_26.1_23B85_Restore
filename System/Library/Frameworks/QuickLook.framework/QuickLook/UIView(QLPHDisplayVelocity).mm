@interface UIView(QLPHDisplayVelocity)
+ (uint64_t)qlph_animateView:()QLPHDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
@end

@implementation UIView(QLPHDisplayVelocity)

+ (uint64_t)qlph_animateView:()QLPHDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v11 = a4[1];
  v13[0] = *a4;
  v13[1] = v11;
  v13[2] = a4[2];
  return [self qlpu_animateView:a3 toCenter:v13 bounds:a5 transform:a6 withDuration:a7 delay:a8 usingSpringWithDamping:a9 initialVelocity:a10 options:a11 completion:?];
}

@end