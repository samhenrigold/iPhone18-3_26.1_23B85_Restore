@interface CUINamedVectorPDFImage
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGPDFDocument)pdfDocument;
@end

@implementation CUINamedVectorPDFImage

- (CGPDFDocument)pdfDocument
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition pdfDocument];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (factor == 0.0)
  {
    [CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  if (width <= 0.0 || height <= 0.0)
  {
    [CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  Page = CGPDFDocumentGetPage([(CUINamedVectorPDFImage *)self pdfDocument], 1uLL);
  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
  v9 = BoxRect.size.width;
  v10 = BoxRect.size.height;
  v11 = width * factor;
  v12 = height * factor;
  themeDisplayGamut = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey:BoxRect.origin.x] themeDisplayGamut];
  if (themeDisplayGamut && (themeDisplayGamut = CGPDFPageContainsWideGamutContent(), themeDisplayGamut))
  {
    v15 = 4097;
    v16 = 8;
    v17 = 16;
    DisplayP3 = _CUIColorSpaceGetDisplayP3(themeDisplayGamut, v14);
  }

  else
  {
    v15 = 8193;
    v16 = 4;
    v17 = 8;
    DisplayP3 = _CUIColorSpaceGetSRGB(themeDisplayGamut, v14);
  }

  v19 = DisplayP3;
  v20 = CUICGBitmapContextCreate(v11, v12, v17, (v11 * v16), DisplayP3, v15);
  if (v20)
  {
    v21 = v20;
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v9;
    v26.size.height = v10;
    CGPDFPageGetDrawingTransform(&transform, Page, kCGPDFCropBox, v26, 0, 1);
    CGContextConcatCTM(v21, &transform);
    CGContextScaleCTM(v21, v11 / v9, v12 / v10);
    CGContextDrawPDFPage(v21, Page);
    Image = CGBitmapContextCreateImage(v21);
    CFRelease(v21);
  }

  else
  {
    _CUILog(4, "CoreUI: %s couldn't create bitmapContext for (%fx%f) colorSpace:'%@' [pdfsize:%fx%f scale:%f bpc:%zd bpp:%zd bitmapInfo:%d]", "[CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:]", *&v11, *&v12, v19, *&v9, *&v10, *&factor, v17, v16, v15);
    return 0;
  }

  return Image;
}

- (id)rasterizeImageUsingScaleFactor:forTargetSize:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"scale" object:? file:? lineNumber:? description:?];
}

- (id)rasterizeImageUsingScaleFactor:forTargetSize:.cold.2()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"targetSizeInPoints.width>0 && targetSizeInPoints.height>0" object:? file:? lineNumber:? description:?];
}

@end