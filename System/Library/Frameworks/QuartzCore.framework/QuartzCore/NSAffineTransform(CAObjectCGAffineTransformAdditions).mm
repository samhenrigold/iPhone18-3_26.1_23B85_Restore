@interface NSAffineTransform(CAObjectCGAffineTransformAdditions)
- (double)CA_CGAffineTransformValue;
@end

@implementation NSAffineTransform(CAObjectCGAffineTransformAdditions)

- (double)CA_CGAffineTransformValue
{
  if (self)
  {
    objc_msgSend_transformStruct(self, a2);
  }

  *a3 = 0u;
  a3[1] = 0u;
  result = 0.0;
  a3[2] = 0u;
  return result;
}

@end