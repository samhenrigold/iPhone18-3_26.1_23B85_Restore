@interface SKUIStarBarView
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUIStarBarView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setColoringUsingStyle:(id)style;
- (void)setEmptyColor:(id)color;
- (void)setFilledColor:(id)color;
- (void)setNumberOfStars:(int64_t)stars;
- (void)setValue:(double)value;
@end

@implementation SKUIStarBarView

- (SKUIStarBarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStarBarView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIStarBarView;
  height = [(SKUIStarBarView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
    emptyColor = height->_emptyColor;
    height->_emptyColor = v9;

    v11 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
    filledColor = height->_filledColor;
    height->_filledColor = v11;

    [(SKUIStarBarView *)height setContentMode:3];
  }

  return height;
}

- (void)setColoringUsingStyle:(id)style
{
  styleCopy = style;
  ikBackgroundColor = [styleCopy ikBackgroundColor];
  color = [ikBackgroundColor color];

  ikColor = [styleCopy ikColor];

  color2 = [ikColor color];

  if (color && color2)
  {
    [(SKUIStarBarView *)self setEmptyColor:color];
LABEL_7:
    [(SKUIStarBarView *)self setFilledColor:color2];
    goto LABEL_8;
  }

  if (color2)
  {
    v8 = SKUIColorSchemeStyleForColor(color2);
    if (v8 <= 3)
    {
      v9 = [color2 colorWithAlphaComponent:dbl_215F3FF90[v8]];
      [(SKUIStarBarView *)self setEmptyColor:v9];
    }

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
  [(SKUIStarBarView *)self setEmptyColor:v10];

  v11 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
  [(SKUIStarBarView *)self setFilledColor:v11];

LABEL_8:
}

- (void)setEmptyColor:(id)color
{
  if (self->_emptyColor != color)
  {
    v4 = [color copy];
    emptyColor = self->_emptyColor;
    self->_emptyColor = v4;

    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = 0;

    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = 0;

    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setFilledColor:(id)color
{
  if (self->_filledColor != color)
  {
    v4 = [color copy];
    filledColor = self->_filledColor;
    self->_filledColor = v4;

    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = 0;

    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = 0;

    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfStars:(int64_t)stars
{
  if (self->_numberOfStars != stars)
  {
    self->_numberOfStars = stars;
    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    self->_value = value;
    [(SKUIStarBarView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(SKUIStarBarView *)self bounds:rect.origin.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v4, v13);
  emptyColor = self->_emptyColor;
  if (emptyColor)
  {
    v16 = emptyColor;
  }

  else
  {
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
  }

  v50 = v16;
  filledColor = self->_filledColor;
  if (filledColor)
  {
    v18 = filledColor;
  }

  else
  {
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
  }

  v20 = v18;
  if (!self->_emptyStarImage)
  {
    v21 = MEMORY[0x277D755B8];
    v22 = SKUIBundle(v18, v19);
    v23 = [v21 imageNamed:@"SmallStarFull" inBundle:v22];

    v24 = [v23 _flatImageWithColor:v50];
    emptyStarImage = self->_emptyStarImage;
    self->_emptyStarImage = v24;

    v26 = [v23 _flatImageWithColor:v20];
    filledStarImage = self->_filledStarImage;
    self->_filledStarImage = v26;
  }

  v28 = 0.0;
  if (ShouldReverseLayoutDirection)
  {
    v52.origin.x = v6;
    v52.origin.y = v8;
    v52.size.width = v10;
    v52.size.height = v12;
    Width = CGRectGetWidth(v52);
    [(UIImage *)self->_emptyStarImage size];
    v28 = Width - v30;
  }

  v31 = -5;
  do
  {
    v32 = self->_emptyStarImage;
    if (v31 + 6 > 5 - self->_numberOfStars)
    {
      v33 = self->_filledStarImage;

      v32 = v33;
    }

    [(UIImage *)v32 size];
    v35 = v34;
    *&v34 = (v12 - v36) * 0.5;
    [(UIImage *)v32 drawAtPoint:v28, floorf(*&v34)];
    v37 = __CFADD__(v31++, 1);
    v38 = v28 - v35;
    if (v37)
    {
      v38 = v28;
    }

    if (ShouldReverseLayoutDirection)
    {
      v28 = v38;
    }

    else
    {
      v28 = v28 + v35;
    }
  }

  while (v31);
  v39 = 0.0;
  if (ShouldReverseLayoutDirection)
  {
    v40 = v28 + -9.0;
  }

  else
  {
    v39 = v28 + 9.0;
    v40 = v10 - (v28 + 9.0);
  }

  v41 = (v12 + -2.0) * 0.5;
  v42 = floorf(v41);
  v43 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v39 cornerRadius:{v42, v40, 2.0, 2.0}];
  [(UIColor *)v50 set];
  [v43 fill];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  value = self->_value;
  v46 = v28 + -9.0 - (v28 + -9.0) * value;
  if (!ShouldReverseLayoutDirection)
  {
    v46 = v28 + 9.0;
  }

  v47 = v40 * value;
  v48 = 2.0;
  v49 = v42;
  CGContextClipToRect(CurrentContext, *&v46);
  [(UIColor *)v20 set];
  [v43 fill];
  CGContextRestoreGState(CurrentContext);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 14.0;
  result.height = v3;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarBarView initWithFrame:]";
}

@end