@interface HMIVideoAnnotator
- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)buffer fontSize:(double)size;
- (__CTFont)_createFontWithSize:(double)size;
- (void)dealloc;
- (void)draw:(id)draw;
- (void)drawBoundingBox:(CGRect)box lineWidth:(double)width text:(id)text color:(const double *)color;
- (void)drawPolygonWithNormalizedPoints:(id)points;
- (void)drawRect:(CGRect)rect width:(double)width color:(const double *)color;
- (void)drawText:(id)text at:(CGPoint)at color:(const double *)color;
- (void)drawTextHeaderBar:(id)bar;
@end

@implementation HMIVideoAnnotator

- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)buffer fontSize:(double)size
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnnotator;
  v5 = [(HMIVideoAnnotator *)&v7 init];
  if (v5)
  {
    *(v5 + 1) = CVPixelBufferRetain(buffer);
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 4) = [v5 _createFontWithSize:?];
    *(v5 + 40) = *MEMORY[0x277CBF3A8];
  }

  return v5;
}

- (__CTFont)_createFontWithSize:(double)size
{
  v15 = *MEMORY[0x277D85DE8];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, size, 0);
  v13 = *MEMORY[0x277CC48D0];
  v4 = *MEMORY[0x277CC48C8];
  v11 = *MEMORY[0x277CC48D8];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v4 count:{&unk_2840750C0, &unk_2840750D8}];
  v12 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v14 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v8 = CTFontDescriptorCreateWithAttributes(v7);
  CopyWithAttributes = CTFontCreateCopyWithAttributes(UIFontForLanguage, 0.0, 0, v8);
  CFRelease(v8);
  CFRelease(UIFontForLanguage);

  return CopyWithAttributes;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CGContextRelease(self->_context);
  CGColorSpaceRelease(self->_colorSpace);
  CFRelease(self->_font);
  v3.receiver = self;
  v3.super_class = HMIVideoAnnotator;
  [(HMIVideoAnnotator *)&v3 dealloc];
}

- (void)draw:(id)draw
{
  drawCopy = draw;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
  self->_size.width = HMICVPixelBufferGetSize(self->_pixelBuffer);
  self->_size.height = v6;
  v7 = PixelFormatType == 32;
  v8 = 2 * (PixelFormatType == 32);
  if (v7)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
  }

  self->_colorSpace = DeviceRGB;
  width = self->_size.width;
  height = self->_size.height;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, 0);
  v13 = CGBitmapContextCreate(BaseAddressOfPlane, width, height, 8uLL, BytesPerRowOfPlane, self->_colorSpace, v8);
  self->_context = v13;
  if (v13)
  {
    drawCopy[2]();
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 0);
  CGColorSpaceRelease(self->_colorSpace);
  CGContextRelease(self->_context);
  self->_context = 0;
  self->_colorSpace = 0;
}

- (void)drawText:(id)text at:(CGPoint)at color:(const double *)color
{
  y = at.y;
  x = at.x;
  colorSpace = self->_colorSpace;
  textCopy = text;
  v11 = CGColorCreate(colorSpace, color);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:? attributes:?];

  v14 = CTLineCreateWithAttributedString(v13);
  CGContextSetTextPosition(self->_context, x, y);
  CTLineDraw(v14, self->_context);
  CFRelease(v14);
  CGColorRelease(v11);
}

- (void)drawRect:(CGRect)rect width:(double)width color:(const double *)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSetLineWidth(self->_context, width);
  if (color)
  {
    v11 = *color;
    v12 = color[1];
    v13 = color[2];
    v14 = color[3];
  }

  else
  {
    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
  }

  CGContextSetRGBStrokeColor(self->_context, v11, v12, v13, v14);
  context = self->_context;
  v16 = x;
  v17 = y;
  widthCopy = width;
  v19 = height;

  CGContextStrokeRect(context, *&v16);
}

- (void)drawTextHeaderBar:(id)bar
{
  v6 = *MEMORY[0x277D85DE8];
  context = self->_context;
  barCopy = bar;
  CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
  v7.size.width = self->_size.width;
  v7.origin.y = self->_size.height + -64.0;
  v7.size.height = 64.0;
  v7.origin.x = 0.0;
  CGContextFillRect(context, v7);
  [(HMIVideoAnnotator *)self drawText:0x3FF0000000000000 at:0x3FF0000000000000 color:0x3FF0000000000000, unk_22D298338];
}

- (void)drawBoundingBox:(CGRect)box lineWidth:(double)width text:(id)text color:(const double *)color
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsNull(v22))
  {
    HMICGRectPixelFromNormalized(x, y, width, height, self->_size.width, self->_size.height);
    v11 = v23.origin.x;
    v12 = v23.origin.y;
    v13 = v23.size.width;
    v14 = v23.size.height;
    MinX = CGRectGetMinX(v23);
    v16 = self->_size.height;
    v24.origin.x = v11;
    v24.origin.y = v12;
    v24.size.width = v13;
    v24.size.height = v14;
    v17 = v16 - CGRectGetMinY(v24);
    v25.origin.x = v11;
    v25.origin.y = v12;
    v25.size.width = v13;
    v25.size.height = v14;
    v18 = CGRectGetWidth(v25);
    v26.origin.x = v11;
    v26.origin.y = v12;
    v26.size.width = v13;
    v26.size.height = v14;
    v19 = -CGRectGetHeight(v26);
    [HMIVideoAnnotator drawRect:"drawRect:width:color:" width:? color:?];
    if ([textCopy length])
    {
      v27.origin.x = MinX;
      v27.origin.y = v17;
      v27.size.width = v18;
      v27.size.height = v19;
      CGRectGetMinX(v27);
      v28.origin.x = MinX;
      v28.origin.y = v17;
      v28.size.width = v18;
      v28.size.height = v19;
      CGRectGetMaxY(v28);
      [HMIVideoAnnotator drawText:"drawText:at:color:" at:? color:?];
    }
  }
}

- (void)drawPolygonWithNormalizedPoints:(id)points
{
  v13 = *MEMORY[0x277D85DE8];
  context = self->_context;
  *components = xmmword_22D298320;
  v12 = *&qword_22D298330;
  pointsCopy = points;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 3.0);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, self->_size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v6 = [pointsCopy objectAtIndexedSubscript:?];
  [v6 x];
  v8 = v7 * self->_size.width;
  v9 = [pointsCopy objectAtIndexedSubscript:?];
  [v9 y];
  CGContextMoveToPoint(context, v8, v10 * self->_size.height);

  [pointsCopy na_each:{MEMORY[0x277D85DD0], 3221225472}];
  CGContextStrokePath(context);
  CGContextRestoreGState(context);
}

void __53__HMIVideoAnnotator_drawPolygonWithNormalizedPoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 x];
  v6 = v5 * *(*(a1 + 32) + 40);
  [v4 y];
  v8 = v7;

  v9 = v8 * *(*(a1 + 32) + 48);

  CGContextAddLineToPoint(v3, v6, v9);
}

@end