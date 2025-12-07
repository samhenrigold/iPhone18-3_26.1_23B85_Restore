@interface NSValue(NSLineBreakContext)
- (uint64_t)UIF_lineBreakContextValue;
@end

@implementation NSValue(NSLineBreakContext)

- (uint64_t)UIF_lineBreakContextValue
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return [self getValue:a2];
}

@end