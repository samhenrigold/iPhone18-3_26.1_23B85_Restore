@interface NSString(CoreRecognitionCaseCheck)
- (uint64_t)isCaseApplicable;
- (void)isLowercase;
- (void)isUppercase;
@end

@implementation NSString(CoreRecognitionCaseCheck)

- (void)isLowercase
{
  lowercaseString = [self lowercaseString];
  v3 = [self isEqualToString:?];

  return v3;
}

- (void)isUppercase
{
  uppercaseString = [self uppercaseString];
  v3 = [self isEqualToString:?];

  return v3;
}

- (uint64_t)isCaseApplicable
{
  if ([self isUppercase])
  {
    return [self isLowercase] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end