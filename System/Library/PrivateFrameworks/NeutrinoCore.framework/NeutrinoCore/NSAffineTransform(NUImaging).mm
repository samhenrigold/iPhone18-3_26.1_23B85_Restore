@interface NSAffineTransform(NUImaging)
+ (id)nu_transformWithCGAffineTransform:()NUImaging;
- (double)nu_CGAffineTransform;
- (id)description;
@end

@implementation NSAffineTransform(NUImaging)

- (id)description
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  objc_msgSend_nu_CGAffineTransform(self, a2);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g %g %g %g %g]", v4, v5, v6];

  return v2;
}

- (double)nu_CGAffineTransform
{
  objc_msgSend_transformStruct(self, a2);
  *a3 = 0u;
  a3[1] = 0u;
  result = 0.0;
  a3[2] = 0u;
  return result;
}

+ (id)nu_transformWithCGAffineTransform:()NUImaging
{
  v4 = objc_msgSend_transform(MEMORY[0x1E696AA98], a2);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v7[2] = a3[2];
  [v4 setTransformStruct:v7];

  return v4;
}

@end