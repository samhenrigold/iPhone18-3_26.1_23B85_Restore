@interface CUIVectorGlyphMulticolorLayer
- (BOOL)needsWideGamut;
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver;
@end

@implementation CUIVectorGlyphMulticolorLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes
{
  v17.receiver = self;
  v17.super_class = CUIVectorGlyphMulticolorLayer;
  [(CUIVectorGlyphLayer *)&v17 _readCSSAttributes:attributes styleAttributes:?];
  v6 = [objc_opt_class() _fillColorFromStyle:styleAttributes];
  v7 = [objc_opt_class() _strokeColorFromStyle:styleAttributes];
  v8 = [objc_opt_class() _colorNameForRenderingStyle:{-[CUIVectorGlyphLayer name](self, "name")}];
  v9 = v8;
  if (!v6)
  {
    v10 = [v8 isEqualToString:@"white"];
    if (v10)
    {
      SRGBWhite = _CUIColorGetSRGBWhite();
    }

    else
    {
      SRGBWhite = _CUIColorGetSRGBBlack(v10, v11);
    }

    v6 = SRGBWhite;
  }

  _symbolDefaults = [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _symbolDefaults];
  if ([objc_msgSend(_symbolDefaults objectForKeyedSubscript:{CUIVectorGlyphDefaultsKeyFillImageNames), "containsObject:", v9}] && (v14 = -[CUIVectorGlyhLayerDelegate fillImageWithName:](-[CUIVectorGlyphLayer delegate](self, "delegate"), "fillImageWithName:", v9)) != 0)
  {
    v15 = CGImageRetain(v14);
    v16 = &OBJC_IVAR___CUIVectorGlyphMulticolorLayer__fillImage;
  }

  else
  {
    self->_fillColor = CGColorCreateCopy(v6);
    self->_fillColorName = [v9 copy];
    self->_strokeColor = CGColorCreateCopy(v7);
    v15 = [v9 copy];
    v16 = &OBJC_IVAR___CUIVectorGlyphMulticolorLayer__strokeColorName;
  }

  *(&self->super.super.isa + *v16) = v15;
}

- (void)dealloc
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    CGColorRelease(fillColor);
  }

  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    CGColorRelease(strokeColor);
  }

  fillImage = self->_fillImage;
  if (fillImage)
  {
    CGImageRelease(fillImage);
  }

  v6.receiver = self;
  v6.super_class = CUIVectorGlyphMulticolorLayer;
  [(CUIVectorGlyphLayer *)&v6 dealloc];
}

- (id)debugDescription
{
  v10.receiver = self;
  v10.super_class = CUIVectorGlyphMulticolorLayer;
  v3 = [(CUIVectorGlyphLayer *)&v10 debugDescription];
  fillColorName = [(CUIVectorGlyphMulticolorLayer *)self fillColorName];
  v5 = @"<unspecified>";
  if (fillColorName)
  {
    v6 = fillColorName;
  }

  else
  {
    v6 = @"<unspecified>";
  }

  fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  strokeColorName = [(CUIVectorGlyphMulticolorLayer *)self strokeColorName];
  if (strokeColorName)
  {
    v5 = strokeColorName;
  }

  return [v3 stringByAppendingFormat:@" fill color name=%@ fill color=%@ stroke color name=%@ stroke color=%@", v6, fillColor, v5, -[CUIVectorGlyphMulticolorLayer strokeColor](self, "strokeColor")];
}

- (BOOL)needsWideGamut
{
  fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  if (fillColor)
  {
    ColorSpace = CGColorGetColorSpace(fillColor);

    LOBYTE(fillColor) = CGColorSpaceIsWideGamutRGB(ColorSpace);
  }

  return fillColor;
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
    if (resolver)
    {
      v17 = (*(resolver + 2))(resolver, [(CUIVectorGlyphMulticolorLayer *)self fillColorName], fillColor);
      if (v17)
      {
        fillColor = v17;
      }
    }

    if (self->_fillImage)
    {
      CGContextBeginTransparencyLayer(context, 0);
    }

    v19.receiver = self;
    v19.super_class = CUIVectorGlyphMulticolorLayer;
    [(CUIVectorGlyphLayer *)&v19 drawInContext:context scaleFactor:fillColor targetSize:0 variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
    if (self->_fillImage)
    {
      CGContextSaveGState(context);
      CGContextSetBlendMode(context, kCGBlendModeSourceIn);
      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = width * factor;
      v20.size.height = height * factor;
      CGContextDrawImage(context, v20, self->_fillImage);
      CGContextRestoreGState(context);
      CGContextEndTransparencyLayer(context);
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __118__CUIVectorGlyphMulticolorLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_colorResolver___block_invoke;
    v18[3] = &unk_1E7249B60;
    v18[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawMulticolorLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v18 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __118__CUIVectorGlyphMulticolorLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_colorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!*(a1 + 32))
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB(self, a2);
  v17 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 0x2001u);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v19 = [(NSArray *)sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v25 + 1) + 8 * v22) drawInContext:v17 scaleFactor:resolver targetSize:factor variableMinValue:width variableMaxValue:height colorResolver:{value, maxValue}];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSArray *)sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  return Image;
}

@end