@interface SKUITomatoRatingView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForRating:(id)rating context:(id)context;
+ (id)_tomatoImageForFreshness:(int64_t)freshness;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)viewForElementIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUITomatoRatingView

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITomatoRatingView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITomatoRatingView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
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
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITomatoRatingView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [self _attributedStringForRating:elementCopy context:contextCopy];
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
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITomatoRatingView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [self _tomatoImageForFreshness:{objc_msgSend(elementCopy, "freshness")}];
  [v18 size];
  v20 = v19;
  v22 = v21;
  labelLayoutCache = [contextCopy labelLayoutCache];

  v24 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

  if (v24)
  {
    [v24 boundingSize];
    if (v22 < v26)
    {
      v22 = v26;
    }

    v20 = v20 + v25 + 3.0;
  }

  v27 = v20;
  v28 = v22;
  result.height = v28;
  result.width = v27;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUITomatoRatingView *)v10 reloadWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  imageView = self->_imageView;
  if (!imageView)
  {
    v19 = objc_alloc_init(MEMORY[0x277D755E8]);
    v20 = self->_imageView;
    self->_imageView = v19;

    v21 = self->_imageView;
    backgroundColor = [(SKUITomatoRatingView *)self backgroundColor];
    [(UIImageView *)v21 setBackgroundColor:backgroundColor];

    [(SKUITomatoRatingView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v23 = [objc_opt_class() _tomatoImageForFreshness:{objc_msgSend(elementCopy, "freshness")}];
  [(UIImageView *)imageView setImage:v23];

  labelView = self->_labelView;
  if (!labelView)
  {
    v25 = objc_alloc_init(SKUIAttributedStringView);
    v26 = self->_labelView;
    self->_labelView = v25;

    v27 = self->_labelView;
    backgroundColor2 = [(SKUITomatoRatingView *)self backgroundColor];
    [(SKUIAttributedStringView *)v27 setBackgroundColor:backgroundColor2];

    [(SKUIAttributedStringView *)self->_labelView setUserInteractionEnabled:0];
    [(SKUITomatoRatingView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v30 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
  [(SKUIAttributedStringView *)labelView setLayout:v30];

  [(SKUITomatoRatingView *)self setNeedsLayout];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITomatoRatingView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITomatoRatingView *)v5 updateWithItemState:v6 context:v7 animated:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITomatoRatingView *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITomatoRatingView layoutSubviews]";
}

- (void)setBackgroundColor:(id)color
{
  imageView = self->_imageView;
  colorCopy = color;
  [(UIImageView *)imageView setBackgroundColor:colorCopy];
  [(SKUIAttributedStringView *)self->_labelView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUITomatoRatingView;
  [(SKUITomatoRatingView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIImageView *)self->_imageView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(SKUIAttributedStringView *)self->_labelView sizeThatFits:width, height];
  v12 = v7 + 3.0 + v11;
  if (v9 >= v10)
  {
    v10 = v9;
  }

  result.height = v10;
  result.width = v12;
  return result;
}

+ (id)_attributedStringForRating:(id)rating context:(id)context
{
  contextCopy = context;
  ratingCopy = rating;
  ratingText = [ratingCopy ratingText];
  style = [ratingCopy style];

  v10 = SKUIViewElementFontWithStyle(style);
  if (!v10)
  {
    v10 = SKUIFontForTextStyle(10, v9);
  }

  tintColor = [contextCopy tintColor];
  v12 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v13 = [ratingText attributedStringWithDefaultFont:v10 foregroundColor:v12 style:style];

  return v13;
}

+ (id)_tomatoImageForFreshness:(int64_t)freshness
{
  if (freshness <= 2)
  {
    v4 = off_278200A20[freshness];
    v5 = MEMORY[0x277D755B8];
    v6 = SKUIBundle(self, a2);
    v3 = [v5 imageNamed:v4 inBundle:v6];
  }

  return v3;
}

+ (void)prefetchResourcesForViewElement:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITomatoRatingView prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITomatoRatingView preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITomatoRatingView requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 viewElement:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUITomatoRatingView sizeThatFitsWidth:viewElement:context:]";
}

- (void)reloadWithViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITomatoRatingView reloadWithViewElement:width:context:]";
}

- (void)setImage:(uint64_t)a3 forArtworkRequest:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITomatoRatingView setImage:forArtworkRequest:context:]";
}

- (void)updateWithItemState:(uint64_t)a3 context:(uint64_t)a4 animated:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITomatoRatingView updateWithItemState:context:animated:]";
}

- (void)viewForElementIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITomatoRatingView viewForElementIdentifier:]";
}

@end