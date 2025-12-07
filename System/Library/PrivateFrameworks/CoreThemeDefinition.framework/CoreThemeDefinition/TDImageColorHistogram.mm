@interface TDImageColorHistogram
- (TDImageColorHistogram)initWithCGImage:(CGImage *)image;
@end

@implementation TDImageColorHistogram

- (TDImageColorHistogram)initWithCGImage:(CGImage *)image
{
  v10.receiver = self;
  v10.super_class = TDImageColorHistogram;
  v4 = [(TDImageColorHistogram *)&v10 init];
  if (v4)
  {
    Height = CGImageGetHeight(image);
    Width = CGImageGetWidth(image);
    v4->_imageBuffer.data = 0;
    v4->_imageBuffer.height = Height;
    v4->_imageBuffer.width = Width;
    v4->_imageBuffer.rowBytes = 0;
    v7 = CUIGetRGBAImageBuffer();
    if (v7)
    {
      NSLog(&cfstr_FailedToInitia.isa, v7);
    }

    else
    {
      v8 = CUIComputeImageColorHistogramARGB();
      if (!v8)
      {
        v4->_isMonochrome = CUIColorHistogramARGBIsMonochrome();
        CUIDeallocateRGBAImageBuffer();
        return v4;
      }

      NSLog(&cfstr_FailedToComput.isa, v8);
      CUIDeallocateRGBAImageBuffer();
    }

    return 0;
  }

  return v4;
}

@end