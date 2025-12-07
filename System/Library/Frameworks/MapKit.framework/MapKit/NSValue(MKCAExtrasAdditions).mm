@interface NSValue(MKCAExtrasAdditions)
+ (id)_mapkit_valueWithCGPoint:()MKCAExtrasAdditions;
- (uint64_t)_mapkit_CGAffineTransformValue;
@end

@implementation NSValue(MKCAExtrasAdditions)

- (uint64_t)_mapkit_CGAffineTransformValue
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return [self getValue:a2 size:48];
}

+ (id)_mapkit_valueWithCGPoint:()MKCAExtrasAdditions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

@end