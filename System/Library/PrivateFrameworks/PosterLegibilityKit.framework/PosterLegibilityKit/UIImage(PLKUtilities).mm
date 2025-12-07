@interface UIImage(PLKUtilities)
+ (id)plk_imageFromContextWithSize:()PLKUtilities scale:type:pool:drawing:;
- (CGImage)plk_isAlphaMask;
- (id)plk_alphaMaskImage;
@end

@implementation UIImage(PLKUtilities)

- (CGImage)plk_isAlphaMask
{
  result = [self CGImage];
  if (result)
  {
    v2 = result;
    BitsPerPixel = CGImageGetBitsPerPixel(result);
    if (BitsPerPixel == CGImageGetBitsPerComponent(v2))
    {
      return 1;
    }

    else
    {
      AlphaInfo = CGImageGetAlphaInfo(v2);
      BitsPerComponent = CGImageGetBitsPerComponent(v2);
      v6 = CGImageGetBitsPerPixel(v2);
      return (AlphaInfo == kCGImageAlphaOnly && v6 == 8 && BitsPerComponent == 8);
    }
  }

  return result;
}

+ (id)plk_imageFromContextWithSize:()PLKUtilities scale:type:pool:drawing:
{
  v8 = a8;
  if (v8)
  {
    v9 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:memoryPool:" scale:? memoryPool:?];
    v10 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
    v13 = v8;
    v11 = [(PLKImageRenderer *)v10 imageWithActions:?];
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

- (id)plk_alphaMaskImage
{
  if ([self plk_isAlphaMask])
  {
    selfCopy = self;
  }

  else
  {
    [self size];
    [self scale];
    v3 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:" scale:?];
    v4 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
    selfCopy = [(PLKImageRenderer *)v4 imageWithActions:?];
  }

  return selfCopy;
}

@end