@interface NSScanner(NSUIntegerParsing)
- (void)scanUnsignedInteger:()NSUIntegerParsing;
@end

@implementation NSScanner(NSUIntegerParsing)

- (void)scanUnsignedInteger:()NSUIntegerParsing
{
  v5 = 0;
  result = [self scanUnsignedLongLong:&v5];
  if (result)
  {
    *a3 = v5;
  }

  return result;
}

@end