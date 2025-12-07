@interface CUIVectorGlyphHierarchicalLayer
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)CopyWithAlpha;
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)CopyWithAlpha;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)resolver;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)resolver;
@end

@implementation CUIVectorGlyphHierarchicalLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes
{
  v8.receiver = self;
  v8.super_class = CUIVectorGlyphHierarchicalLayer;
  [(CUIVectorGlyphLayer *)&v8 _readCSSAttributes:attributes styleAttributes:styleAttributes];
  v5 = [objc_opt_class() _colorNameForRenderingStyle:{-[CUIVectorGlyphLayer name](self, "name")}];
  v6 = [objc_msgSend(objc_opt_class() "_layerHierarchyStyleNames")];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  self->_hierarchyLevel = v7;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = CUIVectorGlyphHierarchicalLayer;
  return [-[CUIVectorGlyphLayer debugDescription](&v3 debugDescription)];
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack(hierarchyLevel, v21);
  if (isEraserLayer && v18 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (resolver)
  {
    SRGBBlack = (*(resolver + 2))(resolver, index, hierarchyLevel);
    CopyWithAlpha = (*(resolver + 2))(resolver, index, 2);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v25.receiver = self;
    v25.super_class = CUIVectorGlyphHierarchicalLayer;
    [(CUIVectorGlyphLayer *)&v25 drawInContext:context scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __132__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_hierarchicalColorResolver___block_invoke;
    v24[3] = &unk_1E7249B60;
    v24[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v24 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __132__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_hierarchicalColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)CopyWithAlpha
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB(self, a2);
  v17 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 0x2001u);
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v20 = v19;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack(hierarchyLevel, v23);
  if (isEraserLayer && v20 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (CopyWithAlpha)
  {
    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, hierarchyLevel);
    CopyWithAlpha = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, 2);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v26 = [(NSArray *)sublayers countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v32 + 1) + 8 * i) drawInContext:v17 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{value, maxValue}];
      }

      v27 = [(NSArray *)sublayers countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  return Image;
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack(hierarchyLevel, v21);
  if (isEraserLayer && v18 < 2.22044605e-16)
  {
    SRGBClear = _CUIColorGetSRGBClear();
    SRGBBlack = SRGBClear;
    v24 = 0.7;
  }

  else
  {
    if (!resolver)
    {
      CopyWithAlpha = 0;
      goto LABEL_7;
    }

    SRGBBlack = (*(resolver + 2))(resolver, index, hierarchyLevel);
    v24 = CGColorGetAlpha(SRGBBlack) * 0.3;
    SRGBClear = SRGBBlack;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBClear, v24);
  CFAutorelease(CopyWithAlpha);
LABEL_7:
  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v27.receiver = self;
    v27.super_class = CUIVectorGlyphHierarchicalLayer;
    [(CUIVectorGlyphLayer *)&v27 drawInContext:context scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __127__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_paletteColorResolver___block_invoke;
    v26[3] = &unk_1E7249B60;
    v26[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v26 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __127__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_paletteColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)CopyWithAlpha
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB(self, a2);
  v17 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 0x2001u);
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v20 = v19;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack(hierarchyLevel, v23);
  if (isEraserLayer && v20 < 2.22044605e-16)
  {
    SRGBClear = _CUIColorGetSRGBClear();
    SRGBBlack = SRGBClear;
    v26 = 0.7;
  }

  else
  {
    if (!CopyWithAlpha)
    {
      goto LABEL_7;
    }

    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, hierarchyLevel);
    v26 = CGColorGetAlpha(SRGBBlack) * 0.3;
    SRGBClear = SRGBBlack;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBClear, v26);
  CFAutorelease(CopyWithAlpha);
LABEL_7:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v28 = [(NSArray *)sublayers countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v34 + 1) + 8 * i) drawInContext:v17 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{value, maxValue}];
      }

      v29 = [(NSArray *)sublayers countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v29);
  }

  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  return Image;
}

@end