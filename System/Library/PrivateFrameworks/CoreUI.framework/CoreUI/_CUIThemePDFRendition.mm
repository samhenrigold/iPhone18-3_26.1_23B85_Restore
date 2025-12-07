@interface _CUIThemePDFRendition
- (CGImage)createImageFromPDFRenditionWithScale:(double)scale;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (void)dealloc;
@end

@implementation _CUIThemePDFRendition

- (void)dealloc
{
  CGPDFDocumentRelease(self->_pdfDocument);
  v3.receiver = self;
  v3.super_class = _CUIThemePDFRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v18.receiver = self;
  v18.super_class = _CUIThemePDFRendition;
  v6 = [(CUIThemeRendition *)&v18 _initWithCSIHeader:header version:*&version];
  v7 = v6;
  if (header->var6 != 1346651680)
  {
    [_CUIThemePDFRendition _initWithCSIHeader:v6 version:a2];
  }

  v8 = &header->var0 + 4 * header->var11.var0 + header->var10;
  v9 = v8 + 180;
  if (*(v8 + 46))
  {
    [_CUIThemePDFRendition _initWithCSIHeader:v7 version:a2];
  }

  v10 = *(v9 + 2);
  v11 = bswap32(v10);
  if (*v9 == 1146569042)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v7 srcData], v9 - objc_msgSend(objc_msgSend(v7, "srcData"), "bytes") + 12, v12);
  if (v13)
  {
    v14 = v13;
    v15 = CGDataProviderCreateWithCFData(v13);
    if (v15)
    {
      v16 = v15;
      v7[27] = CGPDFDocumentCreateWithProvider(v15);
      CGDataProviderRelease(v16);
    }
  }

  return v7;
}

- (CGImage)createImageFromPDFRenditionWithScale:(double)scale
{
  pdfDocument = [(_CUIThemePDFRendition *)self pdfDocument];
  if (!pdfDocument)
  {
    return 0;
  }

  Page = CGPDFDocumentGetPage(pdfDocument, 1uLL);
  v7 = CGPDFPageRetain(Page);
  Image = v7;
  if (v7)
  {
    BoxRect = CGPDFPageGetBoxRect(v7, kCGPDFCropBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v11 = [(CUIThemeRendition *)self scale:BoxRect.origin.x];
    if (v13 < 1.0)
    {
      v13 = 1.0;
    }

    v14 = vcvtad_u64_f64(width * scale / v13);
    v15 = vcvtad_u64_f64(height * scale / v13);
    SRGB = _CUIColorSpaceGetSRGB(v11, v12);
    v17 = CUICGBitmapContextCreate(v14, v15, 8uLL, 4 * (v14 & 0x7FFFFFFFFFFFFFFLL), SRGB, 0x2002u);
    if (v17)
    {
      v18 = v17;
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = width;
      v22.size.height = height;
      CGPDFPageGetDrawingTransform(&transform, Image, kCGPDFCropBox, v22, 0, 1);
      CGContextConcatCTM(v18, &transform);
      CGContextScaleCTM(v18, scale, scale);
      CGContextDrawPDFPage(v18, Image);
      CGPDFPageRelease(Image);
      Image = CGBitmapContextCreateImage(v18);
      CGContextRelease(v18);
      return Image;
    }

    _CUILog(4, "%s %d couldn't create bitmapcontext size:[%zu %zu] bpr %zu", "[_CUIThemePDFRendition createImageFromPDFRenditionWithScale:]", 140, v15, v15, 4 * (v14 & 0x7FFFFFFFFFFFFFFLL));
    CGPDFPageRelease(Image);
    return 0;
  }

  return Image;
}

- (id)_initWithCSIHeader:(uint64_t)a1 version:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  return [(NSAssertionHandler *)v4 handleFailureInMethod:a2 object:a1 file:@"_CUIThemePDFRendition.m" lineNumber:43 description:@"CoreUI: [%@ %@] pixel format must be kCSIPixelFormatPDF", v6, NSStringFromSelector(a2)];
}

- (id)_initWithCSIHeader:(uint64_t)a1 version:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  return [(NSAssertionHandler *)v4 handleFailureInMethod:a2 object:a1 file:@"_CUIThemePDFRendition.m" lineNumber:46 description:@"CoreUI:[%@ %@]  data shouldn't be compressed here", v6, NSStringFromSelector(a2)];
}

@end