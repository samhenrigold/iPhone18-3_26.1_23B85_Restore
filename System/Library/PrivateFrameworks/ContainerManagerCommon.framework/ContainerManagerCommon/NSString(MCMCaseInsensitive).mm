@interface NSString(MCMCaseInsensitive)
- (unint64_t)MCM_isEqualToString:()MCMCaseInsensitive caseSensitive:;
@end

@implementation NSString(MCMCaseInsensitive)

- (unint64_t)MCM_isEqualToString:()MCMCaseInsensitive caseSensitive:
{
  if (!a4)
  {
    return [self compare:a3 options:1] == 0;
  }

  return [self isEqualToString:a3];
}

@end