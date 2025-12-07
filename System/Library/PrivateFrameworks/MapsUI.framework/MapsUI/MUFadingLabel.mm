@interface MUFadingLabel
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading;
- (CGRect)_boundingRectWithSize:(CGSize)size ignoringLeading:(BOOL)leading;
- (MUFadingLabel)initWithFrame:(CGRect)frame;
- (MUFadingLabelDelegate)delegate;
- (double)_lineHeight;
- (void)_localeDidChangeNotification:(id)notification;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateFadeDirection;
- (void)_updateFadeVisibility;
- (void)_updateFadeWidth;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setTrailingPadding:(double)padding;
- (void)setTruncated:(BOOL)truncated;
@end

@implementation MUFadingLabel

- (MUFadingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_localeDidChangeNotification:(id)notification
{
  [(MUFadingLabel *)self _updateFadeWidth];

  [(MUFadingLabel *)self _updateFadeDirection];
}

- (void)setTrailingPadding:(double)padding
{
  if (self->_trailingPadding != padding)
  {
    self->_trailingPadding = padding;
    [(MUFadingLabel *)self _updateFadeWidth];
  }
}

- (void)setTruncated:(BOOL)truncated
{
  if (self->_truncated != truncated)
  {
    self->_truncated = truncated;
    if (truncated)
    {
      maskLayer = self->_maskLayer;
    }

    else
    {
      maskLayer = 0;
    }

    layer = [(MUFadingLabel *)self layer];
    [layer setMask:maskLayer];

    delegate = [(MUFadingLabel *)self delegate];
    [delegate fadingLabelTruncationChanged:self];
  }
}

- (CGRect)_boundingRectWithSize:(CGSize)size ignoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  height = size.height;
  width = size.width;
  v25[1] = *MEMORY[0x1E69E9840];
  text = [(MUFadingLabel *)self text];
  if (leadingCopy)
  {
    v9 = 33;
  }

  else
  {
    v9 = 35;
  }

  v24 = *MEMORY[0x1E69DB648];
  font = [(MUFadingLabel *)self font];
  v25[0] = font;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [text boundingRectWithSize:v9 options:v11 attributes:0 context:{width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  text = [(MUFadingLabel *)self text];
  if (text)
  {
    v6 = text;
    text2 = [(MUFadingLabel *)self text];
    v8 = [text2 length];

    if (v8)
    {
      v9 = 1.79769313e308;
      [(MUFadingLabel *)self _boundingRectWithSize:leadingCopy ignoringLeading:1.79769313e308, 1.79769313e308];
      v11 = v10;
      [(MUFadingLabel *)self bounds];
      Width = CGRectGetWidth(v15);
      if ([(MUFadingLabel *)self numberOfLines]>= 1)
      {
        v9 = v11 * [(MUFadingLabel *)self numberOfLines];
      }

      [(MUFadingLabel *)self _boundingRectWithSize:leadingCopy ignoringLeading:Width, 1.79769313e308];
      LOBYTE(text) = vabdd_f64(v13, v9) > 2.22044605e-16 && v13 > v9;
    }

    else
    {
      LOBYTE(text) = 0;
    }
  }

  return text;
}

- (double)_lineHeight
{
  [(MUFadingLabel *)self _firstBaselineOffsetFromTop];
  v4 = v3;
  [(MUFadingLabel *)self _baselineOffsetFromBottom];
  v6 = v5 + v4;
  font = [(MUFadingLabel *)self font];
  [font lineHeight];
  v9 = v8;

  return fmax(v6, v9);
}

- (void)_updateFadeVisibility
{
  font = [(MUFadingLabel *)self font];
  [font leading];
  [(MUFadingLabel *)self setTruncated:[(MUFadingLabel *)self isTextTruncatedIgnoringLeading:v3 < 0.0]];
}

- (void)_updateFadeDirection
{
  effectiveUserInterfaceLayoutDirection = [(MUFadingLabel *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(CAGradientLayer *)self->_gradientLayer setStartPoint:v4, 0.5];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:v5, 0.5];
}

- (void)_updateFadeWidth
{
  v24[4] = *MEMORY[0x1E69E9840];
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_maskLayer setFrame:?];
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_containerLayer setFrame:?];
  [(MUFadingLabel *)self _lineHeight];
  v4 = v3;
  [(MUFadingLabel *)self bounds];
  v6 = v5 - v4;
  [(MUFadingLabel *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:0.0, v6];
  [(MUFadingLabel *)self bounds];
  v8 = v7;
  [(MUFadingLabel *)self bounds];
  [(CALayer *)self->_multiLineFillLayer setFrame:0.0, 0.0, v8, v9 - v4];
  font = [(MUFadingLabel *)self font];
  traitCollection = [(MUFadingLabel *)self traitCollection];
  v12 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  [(MUFadingLabel *)self trailingPadding];
  v14 = v13;
  [(MUFadingLabel *)self frame];
  v16 = v14 / v15;
  [v12 _bodyLeading];
  v18 = fmin(v17 + v17, 100.0);
  [(MUFadingLabel *)self frame];
  v24[0] = &unk_1F450E490;
  v20 = 1.0 - v16;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20 - v18 / v19];
  v24[1] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v24[2] = v22;
  v24[3] = &unk_1F450E4C0;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [(CAGradientLayer *)self->_gradientLayer setLocations:v23];

  [(CALayer *)self->_maskLayer setNeedsDisplay];
  [(CALayer *)self->_containerLayer setNeedsDisplay];
  [(CAGradientLayer *)self->_gradientLayer setNeedsDisplay];
  [(CALayer *)self->_multiLineFillLayer setNeedsDisplay];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(MUFadingLabel *)self _updateFadeWidth];

  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v4 setText:text];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)setFont:(id)font
{
  v4.receiver = self;
  v4.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v4 setFont:font];
  [(MUFadingLabel *)self _updateFadeWidth];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUFadingLabel;
  [(MUFadingLabel *)&v3 layoutSubviews];
  [(MUFadingLabel *)self _updateFadeWidth];
  [(MUFadingLabel *)self _updateFadeVisibility];
}

- (MUFadingLabel)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = MUFadingLabel;
  v3 = [(MUFadingLabel *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUFadingLabel *)v3 setLineBreakStrategy:0];
    [(MUFadingLabel *)v4 setLineBreakMode:2];
    v5 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v5;

    v7 = *MEMORY[0x1E69798E8];
    [(CAGradientLayer *)v4->_gradientLayer setCompositingFilter:*MEMORY[0x1E69798E8]];
    [(CAGradientLayer *)v4->_gradientLayer setLocations:&unk_1F450E368];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v31[0] = [whiteColor CGColor];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v31[1] = [whiteColor2 CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v31[2] = [clearColor CGColor];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    v31[3] = [clearColor2 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [(CAGradientLayer *)v4->_gradientLayer setColors:v12];

    v13 = objc_opt_new();
    multiLineFillLayer = v4->_multiLineFillLayer;
    v4->_multiLineFillLayer = v13;

    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_multiLineFillLayer, "setBackgroundColor:", [whiteColor3 CGColor]);

    [(CALayer *)v4->_multiLineFillLayer setCompositingFilter:v7];
    v16 = objc_opt_new();
    maskLayer = v4->_maskLayer;
    v4->_maskLayer = v16;

    whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_maskLayer, "setBackgroundColor:", [whiteColor4 CGColor]);

    v19 = objc_opt_new();
    containerLayer = v4->_containerLayer;
    v4->_containerLayer = v19;

    whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_containerLayer, "setBackgroundColor:", [whiteColor5 CGColor]);

    [(CALayer *)v4->_containerLayer setCompositingFilter:v7];
    [(CALayer *)v4->_containerLayer addSublayer:v4->_multiLineFillLayer];
    [(CALayer *)v4->_containerLayer addSublayer:v4->_gradientLayer];
    [(CALayer *)v4->_maskLayer addSublayer:v4->_containerLayer];
    [(MUFadingLabel *)v4 _updateFadeDirection];
    [(MUFadingLabel *)v4 _updateFadeWidth];
    [(MUFadingLabel *)v4 _updateFadeVisibility];
    v30 = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v23 = [(MUFadingLabel *)v4 registerForTraitChanges:v22 withAction:sel__preferredContentSizeCategoryDidChange];

    v29 = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v25 = [(MUFadingLabel *)v4 registerForTraitChanges:v24 withAction:sel__updateFadeDirection];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v4;
}

@end