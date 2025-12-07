@interface NSMutableArray(HMFoundation)
- (void)hmf_removeFirstObject;
@end

@implementation NSMutableArray(HMFoundation)

- (void)hmf_removeFirstObject
{
  result = [self count];
  if (result)
  {

    return [self removeObjectAtIndex:0];
  }

  return result;
}

@end