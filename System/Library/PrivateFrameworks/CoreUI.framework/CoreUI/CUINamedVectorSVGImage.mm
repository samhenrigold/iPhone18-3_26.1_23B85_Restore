@interface CUINamedVectorSVGImage
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGSVGDocument)svgDocument;
@end

@implementation CUINamedVectorSVGImage

- (CGSVGDocument)svgDocument
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition svgDocument];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (factor == 0.0)
  {
    [CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  if (width <= 0.0 || height <= 0.0)
  {
    [CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  _CUILog(3, "[CUINamedVectorImage (%@)]", [(CUINamedLookup *)self name], *&factor, *&width, *&height);
  [(CUINamedVectorSVGImage *)self svgDocument];
  CGSVGDocumentGetCanvasSize();
  v9 = v8;
  v11 = v10;
  v12 = floor(width * factor);
  v13 = floor(height * factor);
  themeDisplayGamut = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] themeDisplayGamut];
  if (themeDisplayGamut && (themeDisplayGamut = CGSVGDocumentContainsWideGamutContent(), themeDisplayGamut))
  {
    v16 = 4097;
    v17 = 8;
    v18 = 16;
    DisplayP3 = _CUIColorSpaceGetDisplayP3(themeDisplayGamut, v15);
  }

  else
  {
    v16 = 8193;
    v17 = 4;
    v18 = 8;
    DisplayP3 = _CUIColorSpaceGetSRGB(themeDisplayGamut, v15);
  }

  v20 = DisplayP3;
  v21 = CUICGBitmapContextCreate(v12, v13, v18, (v12 * v17), DisplayP3, v16);
  if (v21)
  {
    v22 = v21;
    CGContextScaleCTM(v21, v12 / v9, v13 / v11);
    CGContextDrawSVGDocument();
    Image = CGBitmapContextCreateImage(v22);
    CFRelease(v22);
    return Image;
  }

  else
  {
    _CUILog(4, "CoreUI: %s couldn't create bitmapContext for %s (%fx%f) colorSpace:'%@' [pdfsize:%fx%f scale:%f bpc:%zd bpp:%zd bitmapInfo:%zd]", "[CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:]", *&v12, *&v13, v20, *&v9, *&v11, *&factor, v18, v17, v16);
    return 0;
  }
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