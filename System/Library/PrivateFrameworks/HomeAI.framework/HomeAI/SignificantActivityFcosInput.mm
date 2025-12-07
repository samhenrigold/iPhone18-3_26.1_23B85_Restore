@interface SignificantActivityFcosInput
- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)image error:(id *)error;
- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error;
- (SignificantActivityFcosInput)initWithImage_Placeholder:(__CVBuffer *)placeholder;
- (SignificantActivityFcosInput)initWithImage_PlaceholderAtURL:(id)l error:(id *)error;
- (SignificantActivityFcosInput)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation SignificantActivityFcosInput

- (SignificantActivityFcosInput)initWithImage_Placeholder:(__CVBuffer *)placeholder
{
  v7.receiver = self;
  v7.super_class = SignificantActivityFcosInput;
  v4 = [(SignificantActivityFcosInput *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_image_Placeholder = placeholder;
    CVPixelBufferRetain(placeholder);
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_image_Placeholder);
  v3.receiver = self;
  v3.super_class = SignificantActivityFcosInput;
  [(SignificantActivityFcosInput *)&v3 dealloc];
}

- (SignificantActivityFcosInput)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v6 = objc_autoreleasePoolPush();
  v12 = 0;
  v7 = [MEMORY[0x277CBFEF8] featureValueWithCGImage:? pixelsWide:? pixelsHigh:? pixelFormatType:? options:? error:?];
  v8 = v12;
  if (v7)
  {
    [v7 imageBufferValue];
    selfCopy = [(SignificantActivityFcosInput *)selfCopy initWithImage_Placeholder:?];
    v9 = selfCopy;
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

- (SignificantActivityFcosInput)initWithImage_PlaceholderAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MEMORY[0x277CBFEF8] featureValueWithImageAtURL:? pixelsWide:? pixelsHigh:? pixelFormatType:? options:? error:?];
    v9 = v13;
    if (v8)
    {
      [v8 imageBufferValue];
      self = [(SignificantActivityFcosInput *)self initWithImage_Placeholder:?];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)image error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [MEMORY[0x277CBFEF8] featureValueWithCGImage:? pixelsWide:? pixelsHigh:? pixelFormatType:? options:? error:?];
  v8 = v11;
  if (v7)
  {
    CVPixelBufferRelease([(SignificantActivityFcosInput *)self image_Placeholder]);
    [v7 imageBufferValue];
    [(SignificantActivityFcosInput *)self setImage_Placeholder:?];
    CVPixelBufferRetain([(SignificantActivityFcosInput *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  return v7 != 0;
}

- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x277CBFEF8] featureValueWithImageAtURL:? pixelsWide:? pixelsHigh:? pixelFormatType:? options:? error:?];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(SignificantActivityFcosInput *)self image_Placeholder]);
    [v8 imageBufferValue];
    [(SignificantActivityFcosInput *)self setImage_Placeholder:?];
    CVPixelBufferRetain([(SignificantActivityFcosInput *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:?])
  {
    v4 = MEMORY[0x277CBFEF8];
    [(SignificantActivityFcosInput *)self image_Placeholder];
    v5 = [v4 featureValueWithPixelBuffer:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end