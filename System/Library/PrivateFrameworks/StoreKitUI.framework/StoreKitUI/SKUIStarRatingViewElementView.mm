@interface SKUIStarRatingViewElementView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringWithViewElement:(id)element context:(id)context;
+ (id)textPropertiesForViewElement:(id)element width:(double)width context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIStarRatingViewElementView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SKUIStarRatingViewElementView

- (SKUIStarRatingViewElementView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIStarRatingViewElementView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUIStarRatingViewElementView;
  height = [(SKUIStarRatingViewElementView *)&v19 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    height->_elementSpacing = 3;
    [(SKUIStarRatingViewElementView *)height setContentMode:3];
  }

  return v17;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIStarRatingViewElementView prefetchResourcesForViewElement:reason:context:];
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIStarRatingViewElementView preferredSizeForViewElement:context:];
  }

  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIStarRatingViewElementView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [self _attributedStringWithViewElement:elementCopy context:contextCopy];
  labelLayoutCache = [contextCopy labelLayoutCache];

  [labelLayoutCache requestLayoutForViewElement:elementCopy attributedString:v18 width:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIStarRatingViewElementView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIRatingStarsCache cacheWithProperties:1];
  [elementCopy ratingValue];
  v19 = [v17 ratingStarsImageForRating:v18];

  [v19 size];
  v21 = v20;
  v23 = v22;
  labelLayoutCache = [contextCopy labelLayoutCache];

  [labelLayoutCache sizeForViewElement:elementCopy width:width];
  v26 = v25;
  v28 = v27;

  if (v23 < v28 && v26 > 0.00000011920929)
  {
    v23 = v28;
  }

  if (v26 <= 0.00000011920929)
  {
    v30 = v21;
  }

  else
  {
    v30 = v21 + v26 + 3.0;
  }

  v31 = v30;
  v32 = v23;
  result.height = v32;
  result.width = v31;
  return result;
}

+ (id)textPropertiesForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIStarRatingViewElementView *)v9 textPropertiesForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v18 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  if (v18)
  {
    v19 = [[SKUIViewTextProperties alloc] initWithStringLayout:v18];
    v20 = [SKUIRatingStarsCache cacheWithProperties:1];
    [elementCopy ratingValue];
    v22 = [v20 ratingStarsImageForRating:v21];

    [v18 boundingSize];
    v24 = v23;
    [v22 size];
    if (v24 < v25)
    {
      [(SKUIViewTextProperties *)v19 setBaselineOffsetFromBottom:0.0];
      [(SKUIViewTextProperties *)v19 setFirstBaselineOffset:0.0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v9 = [SKUIRatingStarsCache cacheWithProperties:1];
  [elementCopy ratingValue];
  v11 = [v9 ratingStarsImageForRating:v10];

  if (self->_starRatingImage != v11)
  {
    objc_storeStrong(&self->_starRatingImage, v11);
    [(SKUIStarRatingViewElementView *)self setNeedsDisplay];
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v13 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  if (v13 != self->_textLayout)
  {
    objc_storeStrong(&self->_textLayout, v13);
    [(SKUIStarRatingViewElementView *)self setNeedsDisplay];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIStarRatingViewElementView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(SKUIStarRatingViewElementView *)self bounds:rect.origin.x];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v4, v13);
  starRatingImage = self->_starRatingImage;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  if (starRatingImage)
  {
    [(UIImage *)starRatingImage size];
    v16 = v19;
    *&v19 = (v8 - v19 + 2.0) * 0.5;
    v18 = floorf(*&v19);
  }

  rect = v17;
  v20 = *v9;
  textLayout = self->_textLayout;
  if (textLayout && ([(SKUIAttributedStringLayout *)textLayout boundingSize], v10 = v22, v12 = v23, *&v22 = (v8 - v23) * 0.5, v11 = floorf(*&v22), self->_starRatingImage))
  {
    v24 = v20;
    if ((ShouldReverseLayoutDirection & 1) == 0)
    {
      v37.origin.x = v20;
      v37.origin.y = v18;
      v37.size.width = rect;
      v37.size.height = v16;
      v24 = CGRectGetMaxX(v37) + self->_elementSpacing;
    }

    if (v10 >= v6 - v24)
    {
      v10 = v6 - v24;
    }

    if (v16 < v12)
    {
      [(SKUIAttributedStringLayout *)self->_textLayout baselineOffset];
      *&v25 = v25 + v11 - v16 + 2.0;
      v18 = ceilf(*&v25);
    }
  }

  else
  {
    v24 = v20;
  }

  if (ShouldReverseLayoutDirection && self->_starRatingImage)
  {
    v38.origin.x = v24;
    v38.origin.y = v11;
    v38.size.width = v10;
    v38.size.height = v12;
    v20 = CGRectGetMaxX(v38) + self->_elementSpacing;
  }

  attributedString = [(SKUIAttributedStringLayout *)self->_textLayout attributedString];
  v35 = attributedString;
  if (attributedString)
  {
    stringDrawingContext = [(SKUIAttributedStringLayout *)self->_textLayout stringDrawingContext];
    [v35 drawWithRect:33 options:stringDrawingContext context:{v24, v11, v10, v12}];
  }

  if (storeShouldReverseLayoutDirection(attributedString, v27))
  {
    v29 = MEMORY[0x277D755B8];
    cGImage = [(UIImage *)self->_starRatingImage CGImage];
    [(UIImage *)self->_starRatingImage scale];
    v31 = [v29 imageWithCGImage:cGImage scale:4 orientation:?];
    v32 = self->_starRatingImage;
    self->_starRatingImage = v31;
  }

  [(UIImage *)self->_starRatingImage drawInRect:0 blendMode:v20 alpha:v18, recta, v16, 1.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  starRatingImage = self->_starRatingImage;
  if (starRatingImage)
  {
    [(UIImage *)starRatingImage size:fits.width];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  textLayout = self->_textLayout;
  if (textLayout)
  {
    [(SKUIAttributedStringLayout *)textLayout boundingSize];
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_starRatingImage)
  {
    if (self->_textLayout)
    {
      v10 = v10 + v6 + self->_elementSpacing;
      if (v8 >= v11)
      {
        v11 = v8;
      }
    }

    else
    {
      v10 = v6;
      v11 = v8;
    }
  }

  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)_attributedStringWithViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  style = [elementCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  if (!v8)
  {
    containerViewElementType = [contextCopy containerViewElementType];
    if (containerViewElementType == 134 || containerViewElementType == 104)
    {
      v11 = SKUIFontPreferredFontForTextStyle(21, v10);
    }

    else
    {
      v11 = SKUIFontForTextStyle(10, v10);
    }

    v8 = v11;
  }

  tintColor = [contextCopy tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  text = [elementCopy text];
  v15 = [text attributedStringWithDefaultFont:v8 foregroundColor:v13 style:style];

  return v15;
}

- (void)initWithFrame:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStarRatingViewElementView initWithFrame:]";
}

+ (void)prefetchResourcesForViewElement:reason:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIStarRatingViewElementView prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIStarRatingViewElementView preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIStarRatingViewElementView requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 viewElement:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIStarRatingViewElementView sizeThatFitsWidth:viewElement:context:]";
}

+ (void)textPropertiesForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIStarRatingViewElementView textPropertiesForViewElement:width:context:]";
}

@end