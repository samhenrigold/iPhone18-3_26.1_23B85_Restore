@interface TPButton
- (CGSize)intrinsicContentSize;
- (TPButton)initWithTitle:(id)title icon:(id)icon color:(int)color frame:(CGRect)frame;
- (void)_animationDidEnd;
- (void)_animationWillBegin;
- (void)layoutSubviews;
- (void)setBlursBackground:(BOOL)background;
- (void)setButtonColor:(int)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setRoundsCorners:(BOOL)corners;
- (void)setSelected:(BOOL)selected;
- (void)setUsesOverlayBlendingForContents:(BOOL)contents;
@end

@implementation TPButton

- (void)setHighlighted:(BOOL)highlighted
{
  v9.receiver = self;
  v9.super_class = TPButton;
  [(TPButton *)&v9 setHighlighted:highlighted];
  if ([(TPButton *)self isEnabled])
  {
    inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
    [inputSettings setHighlighted:{-[TPButton isHighlighted](self, "isHighlighted")}];

    outputSettings = [(_UIBackdropView *)self->_backdropView outputSettings];
    inputSettings2 = [(_UIBackdropView *)self->_backdropView inputSettings];
    [outputSettings computeOutputSettingsUsingModel:inputSettings2];

    backdropView = self->_backdropView;
    outputSettings2 = [(_UIBackdropView *)backdropView outputSettings];
    [(_UIBackdropView *)backdropView applySettings:outputSettings2];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v19.receiver = self;
  v19.super_class = TPButton;
  [(TPButton *)&v19 setEnabled:enabled];
  inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
  [inputSettings setEnabled:{-[TPButton isEnabled](self, "isEnabled")}];

  inputSettings2 = [(_UIBackdropView *)self->_backdropView inputSettings];
  [inputSettings2 setHighlighted:0];

  outputSettings = [(_UIBackdropView *)self->_backdropView outputSettings];
  inputSettings3 = [(_UIBackdropView *)self->_backdropView inputSettings];
  [outputSettings computeOutputSettingsUsingModel:inputSettings3];

  backdropView = self->_backdropView;
  outputSettings2 = [(_UIBackdropView *)backdropView outputSettings];
  [(_UIBackdropView *)backdropView applySettings:outputSettings2];

  if (!self->_blursBackground)
  {
    [(_UIBackdropView *)self->_backdropView _setBlursBackground:0];
  }

  if (self->_usesOverlayBlendingForContents)
  {
    imageView = [(TPButton *)self imageView];
    [imageView setAlpha:0.400000006];

    imageView2 = [(TPButton *)self imageView];
    layer = [imageView2 layer];
    v13 = *MEMORY[0x1E6979CE8];
    v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [layer setCompositingFilter:v14];

    titleLabel = [(TPButton *)self titleLabel];
    [titleLabel setAlpha:0.400000006];

    titleLabel2 = [(TPButton *)self titleLabel];
    layer2 = [titleLabel2 layer];
    v18 = [MEMORY[0x1E6979378] filterWithType:v13];
    [layer2 setCompositingFilter:v18];
  }
}

- (void)setSelected:(BOOL)selected
{
  v9.receiver = self;
  v9.super_class = TPButton;
  [(TPButton *)&v9 setSelected:selected];
  inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
  [inputSettings setSelected:{-[TPButton isSelected](self, "isSelected")}];

  outputSettings = [(_UIBackdropView *)self->_backdropView outputSettings];
  inputSettings2 = [(_UIBackdropView *)self->_backdropView inputSettings];
  [outputSettings computeOutputSettingsUsingModel:inputSettings2];

  backdropView = self->_backdropView;
  outputSettings2 = [(_UIBackdropView *)backdropView outputSettings];
  [(_UIBackdropView *)backdropView applySettings:outputSettings2];

  if (!self->_blursBackground)
  {
    [(_UIBackdropView *)self->_backdropView _setBlursBackground:0];
  }
}

- (void)setButtonColor:(int)color
{
  if (self->_color != color)
  {
    backdropView = self->_backdropView;
    if (backdropView)
    {
      [(_UIBackdropView *)backdropView removeFromSuperview];
    }

    v6 = 10092;
    switch(color)
    {
      case 0:
        v6 = 10091;
        goto LABEL_13;
      case 1:
      case 7:
        goto LABEL_13;
      case 3:
      case 5:
      case 8:
      case 11:
        v6 = 2030;
        goto LABEL_13;
      case 4:
        break;
      case 6:
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        goto LABEL_15;
      case 10:
        v6 = 2020;
        goto LABEL_13;
      case 12:
        whiteColor = [MEMORY[0x1E69DC888] systemGreenColor];
        goto LABEL_15;
      case 13:
        whiteColor = [MEMORY[0x1E69DC888] systemGrayColor];
        goto LABEL_15;
      case 14:
        whiteColor = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_15;
      case 15:
        whiteColor = [MEMORY[0x1E69DC888] blackColor];
LABEL_15:
        v10 = whiteColor;
        tpImageFromColor = [whiteColor tpImageFromColor];
        [(TPButton *)self setBackgroundImage:tpImageFromColor forState:0];

        break;
      default:
        v6 = 2010;
LABEL_13:
        v8 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v6];
        v9 = self->_backdropView;
        self->_backdropView = v8;

        [(_UIBackdropView *)self->_backdropView setAppliesOutputSettingsAnimationDuration:0.150000006];
        [(_UIBackdropView *)self->_backdropView setConfiguration:1];
        [(TPButton *)self insertSubview:self->_backdropView atIndex:0];
        break;
    }

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(TPButton *)self setTitleColor:whiteColor2 forState:0];

    v13 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.300000012];
    [(TPButton *)self setTitleColor:v13 forState:2];
  }

  self->_color = color;
}

- (TPButton)initWithTitle:(id)title icon:(id)icon color:(int)color frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = *&color;
  titleCopy = title;
  iconCopy = icon;
  v27.receiver = self;
  v27.super_class = TPButton;
  v15 = [(TPButton *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_color = -1;
    v15->_usesOverlayBlendingForContents = 0;
    v15->_blursBackground = 1;
    [(TPButton *)v15 setOpaque:0];
    [(TPButton *)v16 setFrame:x, y, width, height];
    [(TPButton *)v16 setTitle:titleCopy forState:0];
    if (iconCopy)
    {
      [(TPButton *)v16 setImage:iconCopy forState:0];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v18 = [iconCopy _flatImageWithColor:whiteColor];

      [(TPButton *)v16 setImage:v18 forState:1];
      [(TPButton *)v16 setImage:v18 forState:4];
    }

    titleLabel = [(TPButton *)v16 titleLabel];
    v20 = [MEMORY[0x1E69DB878] systemFontOfSize:28.0];
    [titleLabel setFont:v20];

    [(TPButton *)v16 setTitleEdgeInsets:0.0, 0.0, 1.0, 0.0];
    titleLabel2 = [(TPButton *)v16 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [(TPButton *)v16 titleLabel];
    [titleLabel3 setMinimumScaleFactor:0.5];

    [(TPButton *)v16 setButtonColor:v10];
    layer = [(TPButton *)v16 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(TPButton *)v16 layer];
    [layer2 setAllowsGroupBlending:0];

    v16->_roundsCorners = 1;
    [(TPButton *)v16 setClipsToBounds:1];
    layer3 = [(TPButton *)v16 layer];
    [layer3 setCornerRadius:5.0];
  }

  return v16;
}

- (CGSize)intrinsicContentSize
{
  +[TPButton defaultHeight];
  v3 = v2;
  v4 = 123.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TPButton;
  [(TPButton *)&v12 layoutSubviews];
  [(TPButton *)self sendSubviewToBack:self->_backdropView];
  if (self->_usesOverlayBlendingForContents)
  {
    imageView = [(TPButton *)self imageView];
    [imageView setAlpha:0.400000006];

    imageView2 = [(TPButton *)self imageView];
    layer = [imageView2 layer];
    v6 = *MEMORY[0x1E6979CE8];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [layer setCompositingFilter:v7];

    titleLabel = [(TPButton *)self titleLabel];
    [titleLabel setAlpha:0.400000006];

    titleLabel2 = [(TPButton *)self titleLabel];
    layer2 = [titleLabel2 layer];
    v11 = [MEMORY[0x1E6979378] filterWithType:v6];
    [layer2 setCompositingFilter:v11];
  }
}

- (void)setBlursBackground:(BOOL)background
{
  if (self->_blursBackground != background)
  {
    backdropView = self->_backdropView;
    if (background)
    {
      outputSettings = [(_UIBackdropView *)backdropView outputSettings];
      inputSettings = [(_UIBackdropView *)self->_backdropView inputSettings];
      [outputSettings computeOutputSettingsUsingModel:inputSettings];

      v8 = self->_backdropView;
      outputSettings2 = [(_UIBackdropView *)v8 outputSettings];
      [(_UIBackdropView *)v8 applySettings:outputSettings2];
    }

    else
    {
      [(_UIBackdropView *)backdropView _setBlursBackground:0];
    }

    [(TPButton *)self sendSubviewToBack:self->_backdropView];
  }

  self->_blursBackground = background;
}

- (void)setRoundsCorners:(BOOL)corners
{
  if (self->_roundsCorners != corners)
  {
    cornersCopy = corners;
    backdropView = self->_backdropView;
    if (corners)
    {
      v6 = 5.0;
    }

    else
    {
      v6 = 0.0;
    }

    [(_UIBackdropView *)backdropView setClipsToBounds:?];
    layer = [(_UIBackdropView *)self->_backdropView layer];
    [layer setCornerRadius:v6];

    [(TPButton *)self setClipsToBounds:cornersCopy];
    layer2 = [(TPButton *)self layer];
    [layer2 setCornerRadius:v6];

    self->_roundsCorners = cornersCopy;
  }
}

- (void)setUsesOverlayBlendingForContents:(BOOL)contents
{
  contentsCopy = contents;
  if (self->_usesOverlayBlendingForContents != contents)
  {
    imageView = [(TPButton *)self imageView];
    v6 = imageView;
    if (contentsCopy)
    {
      v7 = 0.400000006;
    }

    else
    {
      v7 = 1.0;
    }

    if (contentsCopy)
    {
      v8 = MEMORY[0x1E6979CE8];
    }

    else
    {
      v8 = MEMORY[0x1E6979CC0];
    }

    [imageView setAlpha:v7];

    imageView2 = [(TPButton *)self imageView];
    layer = [imageView2 layer];
    v11 = *v8;
    v12 = [MEMORY[0x1E6979378] filterWithType:v11];
    [layer setCompositingFilter:v12];

    titleLabel = [(TPButton *)self titleLabel];
    [titleLabel setAlpha:v7];

    titleLabel2 = [(TPButton *)self titleLabel];
    layer2 = [titleLabel2 layer];
    v16 = [MEMORY[0x1E6979378] filterWithType:v11];
    [layer2 setCompositingFilter:v16];
  }

  self->_usesOverlayBlendingForContents = contentsCopy;
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = TPButton;
  [(TPButton *)&v5 setImage:image forState:state];
  if (self->_backdropView)
  {
    [(TPButton *)self sendSubviewToBack:?];
  }
}

- (void)_animationWillBegin
{
  [(_UIBackdropView *)self->_backdropView setComputesColorSettings:0];
  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView _setBlursBackground:0];
}

- (void)_animationDidEnd
{
  [(_UIBackdropView *)self->_backdropView setComputesColorSettings:1];
  blursBackground = [(TPButton *)self blursBackground];
  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView _setBlursBackground:blursBackground];
}

@end