@interface A:
- (uint64_t)B;
@end

@implementation A:

- (uint64_t)B
{
  result = swift_getWitnessTable();
  *(self + 8) = result;
  return result;
}

@end