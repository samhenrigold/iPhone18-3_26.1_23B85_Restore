@interface ASAuthorizationAppleIDButton
+ (ASAuthorizationAppleIDButton)buttonWithType:(ASAuthorizationAppleIDButtonType)type style:(ASAuthorizationAppleIDButtonStyle)style;
- (ASAuthorizationAppleIDButton)initWithAuthorizationButtonType:(ASAuthorizationAppleIDButtonType)type authorizationButtonStyle:(ASAuthorizationAppleIDButtonStyle)style;
- (ASAuthorizationAppleIDButton)initWithCoder:(id)coder;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (int64_t)_ak_buttonStyle;
- (int64_t)_ak_buttonType;
- (void)_createHighlightFilterIfNecessary;
- (void)_drawRect:(CGRect)rect inView:(id)view;
- (void)_performAnimationToSetHighlighted:(BOOL)highlighted;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ASAuthorizationAppleIDButton

+ (ASAuthorizationAppleIDButton)buttonWithType:(ASAuthorizationAppleIDButtonType)type style:(ASAuthorizationAppleIDButtonStyle)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithAuthorizationButtonType:type authorizationButtonStyle:style];

  return v4;
}

- (ASAuthorizationAppleIDButton)initWithAuthorizationButtonType:(ASAuthorizationAppleIDButtonType)type authorizationButtonStyle:(ASAuthorizationAppleIDButtonStyle)style
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v12.receiver = self;
  v12.super_class = ASAuthorizationAppleIDButton;
  v8 = [(ASAuthorizationAppleIDButton *)&v12 initWithFrame:v6, v7, 130.0, 30.0];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v8->_style = style;
    [objc_opt_class() defaultCornerRadius];
    v9->_cornerRadius = v10;
    _ASAuthorizationButtonInitialize(v9);
  }

  return v9;
}

- (ASAuthorizationAppleIDButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ASAuthorizationAppleIDButton;
  v5 = [(ASAuthorizationAppleIDButton *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_style = [coderCopy decodeIntegerForKey:@"_style"];
    _ASAuthorizationButtonInitialize(v5);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ASAuthorizationAppleIDButton;
  coderCopy = coder;
  [(ASAuthorizationAppleIDButton *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"_type", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_style forKey:@"_style"];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
  if (self->_cornerRadius != cornerRadius)
  {
    self->_cornerRadius = cornerRadius;
    [(ASAuthorizationAppleIDButton *)self setNeedsDisplay];
  }
}

- (void)_drawRect:(CGRect)rect inView:(id)view
{
  viewCopy = view;
  CurrentContext = UIGraphicsGetCurrentContext();
  _screen = [viewCopy _screen];
  [_screen scale];

  [(ASAuthorizationAppleIDButton *)self _ak_buttonType];
  [(ASAuthorizationAppleIDButton *)self _ak_buttonStyle];
  [viewCopy bounds];
  v8 = AKCreateAppleIDButtonImageWithCornerRadius();
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18.origin.x = v10;
  v18.origin.y = v12;
  v18.size.width = v14;
  v18.size.height = v16;
  CGContextDrawImage(CurrentContext, v18, v8);

  CGImageRelease(v8);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASAuthorizationAppleIDButton;
  [(ASAuthorizationAppleIDButton *)&v3 layoutSubviews];
  [(ASAuthorizationAppleIDButton *)self setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  v2 = 130.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_createHighlightFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    v3 = objc_alloc(MEMORY[0x1E6979378]);
    v4 = [v3 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v4;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v6 = self->_highlightFilter;
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v6, "setValue:forKey:", [v7 CGColor], @"inputColor");

    v10[0] = self->_highlightFilter;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    layer = [(ASAuthorizationAppleIDButton *)self layer];
    [layer setFilters:v8];
  }
}

- (void)_performAnimationToSetHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(ASAuthorizationAppleIDButton *)self _createHighlightFilterIfNecessary];
  layer = [(ASAuthorizationAppleIDButton *)self layer];
  v5 = 0.6;
  if (!highlightedCopy)
  {
    v5 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
  v7 = MEMORY[0x1E69DC888];
  v8 = [layer valueForKeyPath:@"filters.highlightFilter.inputColor"];
  v9 = [v7 colorWithCGColor:v8];

  [layer setValue:objc_msgSend(v6 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v10 setDuration:0.15];
  [v10 setFillMode:*MEMORY[0x1E69797E8]];
  [v10 setFromValue:{objc_msgSend(v9, "CGColor")}];
  [v10 setToValue:{objc_msgSend(v6, "CGColor")}];
  v11 = [layer ak_addAdditiveAnimation:v10];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(ASAuthorizationAppleIDButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = ASAuthorizationAppleIDButton;
    [(ASAuthorizationAppleIDButton *)&v5 setHighlighted:highlightedCopy];
    [(ASAuthorizationAppleIDButton *)self _performAnimationToSetHighlighted:highlightedCopy];
  }
}

- (int64_t)_ak_buttonType
{
  type = self->_type;
  if (type == 1)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

- (int64_t)_ak_buttonStyle
{
  style = self->_style;
  v3 = 1;
  if (style != 1)
  {
    v3 = 2;
  }

  if (style)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  v3 = _WBSLocalizedString();

  return v3;
}

@end