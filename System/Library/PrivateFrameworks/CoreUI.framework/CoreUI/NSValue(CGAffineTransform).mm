@interface NSValue(CGAffineTransform)
- (id)cgAffineTransformValue;
@end

@implementation NSValue(CGAffineTransform)

- (id)cgAffineTransformValue
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

@end