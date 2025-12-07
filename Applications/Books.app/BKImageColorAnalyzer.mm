@interface BKImageColorAnalyzer
+ (double)colorLuminance:(CGColor *)luminance;
+ (id)analyzeColor:(id)color;
@end

@implementation BKImageColorAnalyzer

+ (id)analyzeColor:(id)color
{
  cGImage = [color CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v7 = 0;
  if (Width && Height)
  {
    v8 = sub_1000A4730(Height, v6);
    if (v8)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(cGImage, v8);
      v10 = CopyWithColorSpace;
      if (CopyWithColorSpace)
      {
        cGImage = CopyWithColorSpace;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = TSDBitmapContextCreate();
    CGContextSetInterpolationQuality(v11, kCGInterpolationHigh);
    if (v11)
    {
      v15.origin.x = CGPointZero.x;
      v15.origin.y = CGPointZero.y;
      v15.size.width = 22.0;
      v15.size.height = 22.0;
      CGContextDrawImage(v11, v15, cGImage);
    }

    if (v10)
    {
      CGImageRelease(v10);
    }

    sub_10011D024(v13);
    if (sub_10012C8D4(v11, v13))
    {
      v7 = [UIColor colorWithRed:v13[0] green:v13[1] blue:v13[2] alpha:v13[3]];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    CGContextRelease(v11);
  }

LABEL_17:

  return v7;
}

+ (double)colorLuminance:(CGColor *)luminance
{
  sub_1000576C0(v4, luminance);
  sub_1000579F4(v4);
  return result;
}

@end