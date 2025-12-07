@interface NSData
- (void)cppData;
@end

@implementation NSData

id *__42__NSData_GEOHashUtilities___geo_hexString__block_invoke(id *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 < a3 + a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02hhx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

- (void)cppData
{
  v2 = result;
  if (a2)
  {
    bytes = [a2 bytes];
    v5 = [a2 length];

    return std::string::basic_string[abi:ne200100](v2, bytes, v5);
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