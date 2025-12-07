@interface NSMutableString(AppleMediaServices)
- (void)ams_appendNullableString:()AppleMediaServices;
@end

@implementation NSMutableString(AppleMediaServices)

- (void)ams_appendNullableString:()AppleMediaServices
{
  if (a3)
  {
    return [result appendString:?];
  }

  return result;
}

@end