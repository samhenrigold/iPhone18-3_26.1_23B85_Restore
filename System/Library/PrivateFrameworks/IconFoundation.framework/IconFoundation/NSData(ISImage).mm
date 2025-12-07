@interface NSData(ISImage)
- (_DWORD)__IS_getImageBuffer:()ISImage size:;
- (uint64_t)__IS_copyCGImageBlockSetWithProvider:()ISImage;
- (void)__IS_imageHeader;
@end

@implementation NSData(ISImage)

- (void)__IS_imageHeader
{
  v2 = [self length];
  result = [self bytes];
  if (v2 <= 0x30)
  {
    return 0;
  }

  return result;
}

- (_DWORD)__IS_getImageBuffer:()ISImage size:
{
  result = [self __IS_imageHeader];
  if (result[1])
  {
    v6 = result;
    result = [self length];
    if (result >= v6[1] + 48)
    {
      result = [self bytes];
      if (a3)
      {
        if (result != -48)
        {
          *a3 = result + 12;
        }
      }
    }
  }

  return result;
}

- (uint64_t)__IS_copyCGImageBlockSetWithProvider:()ISImage
{
  v7 = xmmword_1F37DE5E0;
  [self __IS_imageHeader];
  v5 = 0;
  v6 = 0;
  [self __IS_getImageBuffer:&v5 size:&v6];
  result = v5;
  if (v5)
  {
    CGImageBlockCreate();
    return CGImageBlockSetCreate();
  }

  return result;
}

@end