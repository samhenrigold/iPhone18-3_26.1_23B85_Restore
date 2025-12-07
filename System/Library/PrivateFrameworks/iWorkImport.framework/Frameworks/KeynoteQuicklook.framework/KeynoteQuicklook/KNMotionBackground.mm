@interface KNMotionBackground
+ (id)serialQueue;
- (CGImage)newPosterFrameWithSize:(CGSize)size;
- (CGImage)p_newPosterFrameWithWidth:(double)width height:(double)height;
- (CGSize)p_adjustedPosterFrameSize:(CGSize)size;
- (KNMotionBackground)initWithStyle:(id)style;
- (id)fillWithSize:(CGSize)size;
- (void)drawInContext:(CGContext *)context inRect:(CGRect)rect;
@end

@implementation KNMotionBackground

- (KNMotionBackground)initWithStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = KNMotionBackground;
  v6 = [(KNMotionBackground *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, style);
  }

  return v7;
}

- (void)drawInContext:(CGContext *)context inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(KNMotionBackground *)self p_adjustedPosterFrameSize:rect.size.width, rect.size.height];
  v10 = [KNMotionBackground p_newPosterFrameWithWidth:"p_newPosterFrameWithWidth:height:" height:?];
  if (v10)
  {
    v11 = v10;
    CGContextSaveGState(context);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxY = CGRectGetMaxY(v22);
    CGContextTranslateCTM(context, 0.0, MinY + MaxY);
    CGContextScaleCTM(context, 1.0, -1.0);
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    TSUImageOrientationTransform();
    memset(&transform, 0, sizeof(transform));
    CGContextConcatCTM(context, &transform);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGContextDrawImage(context, v23, v11);
    CGImageRelease(v11);
    CGContextRestoreGState(context);
  }

  else
  {
    style = [(KNMotionBackground *)self style];
    makeAlternateFill = [style makeAlternateFill];

    [makeAlternateFill paintRect:context inContext:{x, y, width, height}];
  }
}

- (CGImage)newPosterFrameWithSize:(CGSize)size
{
  [(KNMotionBackground *)self p_adjustedPosterFrameSize:size.width, size.height];

  return [KNMotionBackground p_newPosterFrameWithWidth:"p_newPosterFrameWithWidth:height:" height:?];
}

+ (id)serialQueue
{
  if (qword_280A3BF00 != -1)
  {
    sub_275E59C90();
  }

  v3 = qword_280A3BF08;

  return v3;
}

- (CGImage)p_newPosterFrameWithWidth:(double)width height:(double)height
{
  posterFrameData = [(KNMotionBackgroundStyle *)self->_style posterFrameData];
  if (!posterFrameData)
  {
    return 0;
  }

  v6 = posterFrameData;
  posterFrameData2 = [(KNMotionBackgroundStyle *)self->_style posterFrameData];
  needsDownload = [posterFrameData2 needsDownload];

  if (needsDownload)
  {
    return 0;
  }

  posterFrameData3 = [(KNMotionBackgroundStyle *)self->_style posterFrameData];
  v11 = TSDResampleImageData();

  newCGImage = [v11 newCGImage];
  return newCGImage;
}

- (CGSize)p_adjustedPosterFrameSize:(CGSize)size
{
  TSUSizeIsEmpty();
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    TSDMaxPixelAreaForiOSImages();
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
  }

  TSURoundedSize();
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)fillWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(KNMotionBackground *)self newPosterFrameWithSize:?];
  if (v6)
  {
    v7 = v6;
    style = [(KNMotionBackground *)self style];
    context = [style context];

    v10 = MEMORY[0x277D80828];
    v11 = CGImagePNGRepresentation();
    v12 = [v10 dataFromNSData:v11 filename:@"motionBackground.png" context:context];

    v13 = [objc_alloc(MEMORY[0x277D802C0]) initWithImageData:v12 technique:0 tintColor:0 size:{width, height}];
    CGImageRelease(v7);
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D801F8]);
    context = [(KNMotionBackground *)self referenceColor];
    v13 = [v14 initWithColor:context];
  }

  return v13;
}

@end