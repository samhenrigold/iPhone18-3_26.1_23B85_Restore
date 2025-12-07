@interface SLDActiveCallViewRenderer
- (SLDActiveCallViewRenderer)initWithStyle:(id)style tag:(id)tag;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDActiveCallViewRenderer

- (SLDActiveCallViewRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v12.receiver = self;
  v12.super_class = SLDActiveCallViewRenderer;
  v9 = [(SLDActiveCallViewRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v10->_RTL = [styleCopy layoutDirection] == 1;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  v27 = *MEMORY[0x277D85DE8];
  slotTag = [(SLDActiveCallViewRenderer *)self slotTag];
  isCallActive = [slotTag isCallActive];

  v8 = SLDaemonLogHandle(v7);
  activeCallGroupPhotoData = v8;
  if (isCallActive)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v26.a) = 138412290;
      *(&v26.a + 4) = self;
      _os_log_impl(&dword_231772000, activeCallGroupPhotoData, OS_LOG_TYPE_INFO, "[%@] SLDActiveCallViewRenderer had an active conversation at time of rendering.", &v26, 0xCu);
    }

    slotTag2 = [(SLDActiveCallViewRenderer *)self slotTag];
    [slotTag2 maxWidth];
    v12 = v11;

    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v12;
    v29.size.height = 45.0;
    v13 = CGPathCreateWithRoundedRect(v29, 15.0, 15.0, 0);
    CGContextSetRGBFillColor(context, 0.8, 0.8, 0.8, 1.0);
    CGContextAddPath(context, v13);
    CGContextDrawPath(context, kCGPathFill);
    CGPathRelease(v13);
    slotTag3 = [(SLDActiveCallViewRenderer *)self slotTag];
    activeCallGroupPhotoData = [slotTag3 activeCallGroupPhotoData];

    if (activeCallGroupPhotoData)
    {
      v15 = CGDataProviderCreateWithCFData(activeCallGroupPhotoData);
      if (v15)
      {
        v16 = v15;
        v17 = CGImageSourceCreateWithDataProvider(v15, 0);
        CFRelease(v16);
        if (v17)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);
          CFRelease(v17);
          if (ImageAtIndex)
          {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 0.0, 45.0);
            CGContextScaleCTM(context, 1.0, -1.0);
            CGContextBeginPath(context);
            v30.origin.x = 8.0;
            v30.origin.y = 8.0;
            v30.size.width = 30.0;
            v30.size.height = 30.0;
            CGContextAddEllipseInRect(context, v30);
            CGContextClip(context);
            CGContextClosePath(context);
            v31.origin.x = 8.0;
            v31.origin.y = 8.0;
            v31.size.width = 30.0;
            v31.size.height = 30.0;
            CGContextDrawImage(context, v31, ImageAtIndex);
            CGContextRestoreGState(context);
            CGImageRelease(ImageAtIndex);
          }
        }
      }
    }

    CGContextSaveGState(context);
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    *&v26.a = *MEMORY[0x277CBF2C0];
    *&v26.c = v19;
    *&v26.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGContextSetTextMatrix(context, &v26);
    CGContextTranslateCTM(context, 0.0, 45.0);
    CGContextScaleCTM(context, 1.0, -1.0);
    Mutable = CGPathCreateMutable();
    v32.size.width = v12 + -46.0;
    v32.origin.x = 46.0;
    v32.origin.y = 0.0;
    v32.size.height = 30.0;
    CGPathAddRect(Mutable, 0, v32);
    slotTag4 = [(SLDActiveCallViewRenderer *)self slotTag];
    activeCallDisplayName = [slotTag4 activeCallDisplayName];

    v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:activeCallDisplayName];
    v24 = CTFramesetterCreateWithAttributedString(v23);
    v28.length = [(__CFAttributedString *)v23 length];
    v28.location = 0;
    Frame = CTFramesetterCreateFrame(v24, v28, Mutable, 0);
    CTFrameDraw(Frame, context);
    CFRelease(Frame);
    CFRelease(Mutable);
    CFRelease(v24);
    CGContextRestoreGState(context);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SLDActiveCallViewRenderer renderInContext:activeCallGroupPhotoData];
  }
}

@end