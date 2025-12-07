@interface NSString
- (void)stdString;
@end

@implementation NSString

- (void)stdString
{
  v2 = result;
  if (a2)
  {
    uTF8String = [a2 UTF8String];
    v5 = [a2 lengthOfBytesUsingEncoding:4];

    return std::string::basic_string[abi:ne200100](v2, uTF8String, v5);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

@end