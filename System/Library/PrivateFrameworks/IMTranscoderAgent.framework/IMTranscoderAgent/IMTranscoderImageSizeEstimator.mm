@interface IMTranscoderImageSizeEstimator
+ (id)newEstimatorWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source;
- (CGSize)_newSizeForMaximumDimension:(int64_t)dimension originalSize:(CGSize)result;
- (IMTranscoderImageSizeEstimator)initWithUTI:(id)i imageSource:(CGImageSource *)source;
- (IMTranscoderImageSizeEstimator)initWithUTI:(id)i originalSize:(CGSize)size fileSize:(unint64_t)fileSize;
- (double)_nominalBytesPerPixelForUTI:(id)i;
- (double)_normalizedInputFactorForUTI:(id)i bytesPerPixel:(double)pixel;
- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality;
@end

@implementation IMTranscoderImageSizeEstimator

+ (id)newEstimatorWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source
{
  if (!UTTypeConformsTo(uti, *MEMORY[0x277CC20C8]) && !UTTypeConformsTo(uti, @"public.heif-standard") || (v8 = [IMTranscoderImageCMPhotoSizeEstimator alloc], (result = objc_msgSend_initWithURL_uti_imageSource_(v8, v9, l, uti, source)) == 0))
  {
    v11 = [IMTranscoderImageSizeEstimator alloc];

    return MEMORY[0x2821F9670](v11, sel_initWithUTI_imageSource_, uti, source);
  }

  return result;
}

- (IMTranscoderImageSizeEstimator)initWithUTI:(id)i imageSource:(CGImageSource *)source
{
  v27.receiver = self;
  v27.super_class = IMTranscoderImageSizeEstimator;
  v6 = [(IMTranscoderImageSizeEstimator *)&v27 init];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    Width = CGImageGetWidth(v8);
    Height = CGImageGetHeight(v8);
    v6->_originalSize.width = Width;
    v6->_originalSize.height = Height;
    CFRelease(v8);
    if (v6->_originalSize.width != *MEMORY[0x277CBF3A8] || v6->_originalSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v13 = CGImageSourceCopyProperties(source, 0);
      v16 = v13;
      if (v13)
      {
        v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x277CD31B8], v15);
        objc_msgSend_doubleValue(v17, v18, v19, v20);
        if (v23 != 0.0)
        {
          v24 = v23 / (v6->_originalSize.width * v6->_originalSize.height);
          if (BitsPerPixel > 0x27)
          {
            v24 = v24 * 0.5;
          }

          objc_msgSend__normalizedInputFactorForUTI_bytesPerPixel_(v6, v21, i, v22, v24);
          v6->_normalizedInputFactor = v25;
        }
      }
    }
  }

  return v6;
}

- (IMTranscoderImageSizeEstimator)initWithUTI:(id)i originalSize:(CGSize)size fileSize:(unint64_t)fileSize
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = IMTranscoderImageSizeEstimator;
  v9 = [(IMTranscoderImageSizeEstimator *)&v14 init];
  v9->_originalSize.width = width;
  v9->_originalSize.height = height;
  objc_msgSend__normalizedInputFactorForUTI_bytesPerPixel_(v9, v10, i, v11, fileSize / (width * height));
  v9->_normalizedInputFactor = v12;
  return v9;
}

- (CGSize)_newSizeForMaximumDimension:(int64_t)dimension originalSize:(CGSize)result
{
  if (result.width <= result.height)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (height > dimension)
  {
    v5 = dimension / height;
    result.width = (result.width * v5);
    result.height = (result.height * v5);
  }

  return result;
}

- (double)_nominalBytesPerPixelForUTI:(id)i
{
  if (UTTypeConformsTo(i, *MEMORY[0x277CC20C8]))
  {
    return 0.35;
  }

  if (UTTypeConformsTo(i, @"public.heif-standard"))
  {
    return 0.18;
  }

  if (UTTypeConformsTo(i, *MEMORY[0x277CC2120]))
  {
    return 1.8;
  }

  v5 = UTTypeConformsTo(i, *MEMORY[0x277CC2088]);
  result = 0.7;
  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)_normalizedInputFactorForUTI:(id)i bytesPerPixel:(double)pixel
{
  objc_msgSend__nominalBytesPerPixelForUTI_(self, a2, i, v4);
  v7 = pixel / v6;
  if (v6 == 0.0)
  {
    v7 = 1.0;
  }

  result = 2.0;
  if (v7 <= 2.0)
  {
    result = v7;
    if (v7 < 0.15)
    {
      return 0.15;
    }
  }

  return result;
}

- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality
{
  if (self->_originalSize.width == *MEMORY[0x277CBF3A8] && self->_originalSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0;
  }

  objc_msgSend__newSizeForMaximumDimension_originalSize_(self, a2, dimension, dimension);
  v11 = v9 * v10;
  if (UTTypeConformsTo(i, *MEMORY[0x277CC20C8]))
  {
    objc_msgSend__estimatedBytesPerPixelForJPEGQuality_(self, v12, v13, v14, quality);
  }

  else if (UTTypeConformsTo(i, @"public.heif-standard"))
  {
    objc_msgSend__estimatedBytesPerPixelForJPEGQuality_(self, v17, v18, v19, quality);
    v15 = v20 * 0.6;
  }

  else
  {
    objc_msgSend__nominalBytesPerPixelForUTI_(self, v17, i, v19);
  }

  return (v11 * (v15 * self->_normalizedInputFactor) * 0.85);
}

@end