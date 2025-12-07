@interface NSNumber(TransparencyDate)
- (void)kt_enumValueWithMax:()TransparencyDate defaultValue:;
@end

@implementation NSNumber(TransparencyDate)

- (void)kt_enumValueWithMax:()TransparencyDate defaultValue:
{
  result = [self unsignedIntegerValue];
  if (result > a3)
  {
    return a4;
  }

  return result;
}

@end