@interface ARCoachingButton
- (ARCoachingButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets;
- (ARCoachingButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)largeImageInsets;
- (UIFont)boldFont;
- (UIFont)regularFont;
- (id)_colorDarkenedIfNeededForColor:(id)color;
- (void)_didUpdateContentSizeCategory:(id)category;
- (void)_didUpdateDarkenColorsSetting:(id)setting;
- (void)_updateTitleStyleForButton:(id)button withControlStyle:(int64_t)style;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setControlStyle:(int64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCurrentAppearanceIfNeeded;
@end

@implementation ARCoachingButton

- (ARCoachingButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v88[4] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v86.receiver = self;
  v86.super_class = ARCoachingButton;
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = [(ARCoachingButton *)&v86 initWithFrame:*MEMORY[0x277CBF3A0], v18, v19, v20];
  v22 = v21;
  if (v21)
  {
    [(ARCoachingButton *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v23 = [[ARCoachingControlBlurredBackgroundView alloc] initWithFrame:style == 1 backgroundStyle:controlStyle controlStyle:v17, v18, v19, v20];
      blurredBackgroundView = v22->_blurredBackgroundView;
      v22->_blurredBackgroundView = v23;

      [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ARCoachingButton *)v22 addSubview:v22->_blurredBackgroundView];
    }

    objc_storeStrong(&v22->_button, button);
    [(ARCoachingWrappedButton *)v22->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ARCoachingButton *)v22 addSubview:v22->_button];
    v22->_buttonStyle = style;
    v22->_textStyle = textStyle;
    v22->_controlStyle = controlStyle;
    v22->_largeImageInsets.top = top;
    v22->_largeImageInsets.left = left;
    v22->_largeImageInsets.bottom = bottom;
    v22->_largeImageInsets.right = right;
    v25 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.35];
    white35PercentColor = v22->_white35PercentColor;
    v22->_white35PercentColor = v25;

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    white100PercentColor = v22->_white100PercentColor;
    v22->_white100PercentColor = v27;

    v29 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.7];
    white70PercentColor = v22->_white70PercentColor;
    v22->_white70PercentColor = v29;

    v31 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.35];
    black35PercentColor = v22->_black35PercentColor;
    v22->_black35PercentColor = v31;

    v33 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
    black70PercentColor = v22->_black70PercentColor;
    v22->_black70PercentColor = v33;

    v35 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    blue100PercentColor = v22->_blue100PercentColor;
    v22->_blue100PercentColor = v35;

    v37 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:0.5];
    blue50PercentColor = v22->_blue50PercentColor;
    v22->_blue50PercentColor = v37;

    v39 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
    white75PercentColor = v22->_white75PercentColor;
    v22->_white75PercentColor = v39;

    v41 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.52];
    white52PercentColor = v22->_white52PercentColor;
    v22->_white52PercentColor = v41;

    v43 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.26];
    white26PercentColor = v22->_white26PercentColor;
    v22->_white26PercentColor = v43;

    if (_UISolariumEnabled())
    {
      v45 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
      leadingAnchor2 = [(ARCoachingButton *)v22 leadingAnchor];
      v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v88[0] = v48;
      trailingAnchor = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
      trailingAnchor2 = [(ARCoachingButton *)v22 trailingAnchor];
      v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v88[1] = v85;
      topAnchor = [(ARCoachingWrappedButton *)v22->_button topAnchor];
      topAnchor2 = [(ARCoachingButton *)v22 topAnchor];
      v84 = topAnchor;
      v82 = [topAnchor constraintEqualToAnchor:?];
      v88[2] = v82;
      bottomAnchor = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
      bottomAnchor2 = [(ARCoachingButton *)v22 bottomAnchor];
      v80 = [bottomAnchor constraintEqualToAnchor:?];
      v88[3] = v80;
      leadingAnchor5 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
      [v45 activateConstraints:leadingAnchor5];
LABEL_12:

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v22 selector:sel__didUpdateDarkenColorsSetting_ name:*MEMORY[0x277D76460] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v22 selector:sel__didUpdateContentSizeCategory_ name:*MEMORY[0x277D76810] object:0];

      goto LABEL_13;
    }

    v79 = buttonCopy;
    if (controlStyle == 2)
    {
      v54 = 0.4;
    }

    else
    {
      if (controlStyle != 3)
      {
LABEL_11:
        v76 = MEMORY[0x277CCAAD0];
        leadingAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView leadingAnchor];
        leadingAnchor4 = [(ARCoachingButton *)v22 leadingAnchor];
        v75 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v87[0] = v75;
        trailingAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView trailingAnchor];
        trailingAnchor4 = [(ARCoachingButton *)v22 trailingAnchor];
        v85 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v87[1] = v85;
        topAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView topAnchor];
        topAnchor2 = [(ARCoachingButton *)v22 topAnchor];
        v84 = topAnchor3;
        v82 = [topAnchor3 constraintEqualToAnchor:?];
        v87[2] = v82;
        bottomAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView bottomAnchor];
        bottomAnchor2 = [(ARCoachingButton *)v22 bottomAnchor];
        v80 = [bottomAnchor3 constraintEqualToAnchor:?];
        v87[3] = v80;
        leadingAnchor5 = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
        leadingAnchor6 = [(ARCoachingButton *)v22 leadingAnchor];
        v71 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
        v87[4] = v71;
        trailingAnchor5 = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
        trailingAnchor6 = [(ARCoachingButton *)v22 trailingAnchor];
        v57 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v87[5] = v57;
        topAnchor4 = [(ARCoachingWrappedButton *)v22->_button topAnchor];
        topAnchor5 = [(ARCoachingButton *)v22 topAnchor];
        v60 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
        v87[6] = v60;
        bottomAnchor4 = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
        bottomAnchor5 = [(ARCoachingButton *)v22 bottomAnchor];
        v63 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v87[7] = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:8];
        [v76 activateConstraints:v64];

        trailingAnchor = trailingAnchor3;
        trailingAnchor2 = trailingAnchor4;

        v48 = v75;
        bottomAnchor = bottomAnchor3;

        leadingAnchor2 = leadingAnchor4;
        leadingAnchor = leadingAnchor3;

        buttonCopy = v79;
        goto LABEL_12;
      }

      v54 = 0.55;
    }

    v55 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v54];
    [(ARCoachingWrappedButton *)v22->_button setBackgroundColor:v55];

    goto LABEL_11;
  }

LABEL_13:

  return v22;
}

- (ARCoachingButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  titleCopy = title;
  v13 = [ARCoachingWrappedButton alloc];
  v14 = [(ARCoachingWrappedButton *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ARCoachingWrappedButton *)v14 setTitle:titleCopy forState:0];

  if (_UISolariumEnabled())
  {
    _clearGlassButtonConfiguration = [MEMORY[0x277D75230] _clearGlassButtonConfiguration];
    [(ARCoachingWrappedButton *)v14 setConfiguration:_clearGlassButtonConfiguration];
  }

  titleLabel = [(ARCoachingWrappedButton *)v14 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:categoryCopy];

  v17 = [(ARCoachingButton *)self initWithButton:v14 buttonStyle:style textStyle:textStyle controlStyle:controlStyle largeImageInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(ARCoachingButton *)v17 _updateTitleStyleForButton:v14 withControlStyle:controlStyle];

  return v17;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  button = [(ARCoachingButton *)self button];
  [button addTarget:targetCopy action:action forControlEvents:events];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 systemLayoutSizeFittingSize:{width, height}];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(ARCoachingButton *)self systemLayoutSizeFittingSize:width, height];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
    *&v14 = priority;
    *&v15 = fittingPriority;
    [button2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(ARCoachingButton *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
    v17 = v20;
    v19 = v21;
  }

  v22 = v17;
  v23 = v19;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)intrinsicContentSize
{
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ARCoachingButton;
    [(ARCoachingButton *)&v13 intrinsicContentSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = _UISolariumEnabled();
  button = [(ARCoachingButton *)self button];
  v13 = button;
  if (v8)
  {
    configuration = [button configuration];

    [configuration setContentInsets:{top, left, bottom, right}];
    button2 = [(ARCoachingButton *)self button];
    [button2 setConfiguration:configuration];

    v12 = configuration;
  }

  else
  {
    [button setContentEdgeInsets:{top, left, bottom, right}];
    v12 = v13;
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  v3 = _UISolariumEnabled();
  button = [(ARCoachingButton *)self button];
  v5 = button;
  if (v3)
  {
    configuration = [button configuration];
    [configuration contentInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    [button contentEdgeInsets];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIFont)regularFont
{
  if (!self->_regularFont)
  {
    button = [(ARCoachingButton *)self button];
    titleLabel = [button titleLabel];
    adjustsFontForContentSizeCategory = [titleLabel adjustsFontForContentSizeCategory];

    if (adjustsFontForContentSizeCategory)
    {
      [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    }

    else
    {
      [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] maximumContentSizeCategory:*MEMORY[0x277D76818]];
    }
    v6 = ;
    regularFont = self->_regularFont;
    self->_regularFont = v6;
  }

  v8 = self->_regularFont;

  return v8;
}

- (UIFont)boldFont
{
  boldFont = self->_boldFont;
  if (!boldFont)
  {
    v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
    v5 = MEMORY[0x277D74300];
    regularFont = [(ARCoachingButton *)self regularFont];
    [regularFont pointSize];
    v7 = [v5 fontWithDescriptor:v4 size:?];
    v8 = self->_boldFont;
    self->_boldFont = v7;

    boldFont = self->_boldFont;
  }

  return boldFont;
}

- (void)setControlStyle:(int64_t)style
{
  if (self->_controlStyle != style && [(ARCoachingButton *)self currentStyle]!= 2)
  {
    self->_controlStyle = style;
    blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

    if (blurredBackgroundView)
    {
      blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
      [blurredBackgroundView2 setControlStyle:style];
    }

    button = [(ARCoachingButton *)self button];
    [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:style];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10.receiver = self;
  v10.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v10 setEnabled:?];
  blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

  if (blurredBackgroundView)
  {
    blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
    [blurredBackgroundView2 setEnabled:enabledCopy];
  }

  button = [(ARCoachingButton *)self button];
  isEnabled = [button isEnabled];

  if (isEnabled != enabledCopy)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 setEnabled:enabledCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v10.receiver = self;
  v10.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v10 setSelected:?];
  blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

  if (blurredBackgroundView)
  {
    blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
    [blurredBackgroundView2 setSelected:selectedCopy];
  }

  button = [(ARCoachingButton *)self button];
  isSelected = [button isSelected];

  if (isSelected != selectedCopy)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 setSelected:selectedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v10.receiver = self;
  v10.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v10 setHighlighted:?];
  blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

  if (blurredBackgroundView)
  {
    blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
    [blurredBackgroundView2 setHighlighted:highlightedCopy];
  }

  button = [(ARCoachingButton *)self button];
  isHighlighted = [button isHighlighted];

  if (isHighlighted != highlightedCopy)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 setHighlighted:highlightedCopy];
  }
}

- (id)_colorDarkenedIfNeededForColor:(id)color
{
  colorCopy = color;
  if (UIAccessibilityDarkerSystemColorsEnabled() && (v10 = 0.0, v11 = 0.0, v8 = 0.0, v9 = 0.0, [colorCopy getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8]))
  {
    if (v9 == 0.0)
    {
      v4 = [colorCopy colorWithAlphaComponent:v8 / 0.75];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D75348]);
      v4 = [v7 initWithHue:v11 saturation:v10 brightness:v9 * 0.75 alpha:v8];
    }
  }

  else
  {
    v4 = colorCopy;
  }

  v5 = v4;

  return v5;
}

- (void)_updateTitleStyleForButton:(id)button withControlStyle:(int64_t)style
{
  v55[2] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v7 = [buttonCopy titleForState:0];
  if (v7)
  {
    if ([(ARCoachingButton *)self buttonStyle]== 1 || [(ARCoachingButton *)self textStyle]== 1)
    {
      boldFont = [(ARCoachingButton *)self boldFont];
      boldFont2 = [(ARCoachingButton *)self boldFont];
      boldFont3 = [(ARCoachingButton *)self boldFont];
    }

    else
    {
      boldFont = [(ARCoachingButton *)self regularFont];
      boldFont2 = [(ARCoachingButton *)self regularFont];
      boldFont3 = [(ARCoachingButton *)self regularFont];
    }

    v43 = boldFont3;
    boldFont4 = [(ARCoachingButton *)self boldFont];
    if (style == 3)
    {
      white75PercentColor = [(ARCoachingButton *)self white75PercentColor];
      white52PercentColor = [(ARCoachingButton *)self white52PercentColor];
      white26PercentColor = [(ARCoachingButton *)self white26PercentColor];
      blue100PercentColor = [(ARCoachingButton *)self blue100PercentColor];
      white26PercentColor2 = [(ARCoachingButton *)self white26PercentColor];
    }

    else
    {
      if (style == 2)
      {
        white75PercentColor = [(ARCoachingButton *)self white100PercentColor];
        white52PercentColor = [(ARCoachingButton *)self white70PercentColor];
        white26PercentColor = [(ARCoachingButton *)self white35PercentColor];
        blue100PercentColor = [(ARCoachingButton *)self white70PercentColor];
        white35PercentColor = [(ARCoachingButton *)self white35PercentColor];
        white35PercentColor2 = [(ARCoachingButton *)self white35PercentColor];
LABEL_15:
        v36 = white75PercentColor;
        v37 = white35PercentColor2;
        v14 = *MEMORY[0x277D740A8];
        v33 = boldFont;
        v55[0] = boldFont;
        v15 = *MEMORY[0x277D740C0];
        v54[0] = v14;
        v54[1] = v15;
        v16 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white75PercentColor];
        v55[1] = v16;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

        v34 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v35];
        [buttonCopy setAttributedTitle:v34 forState:0];
        v52[1] = v15;
        v53[0] = boldFont2;
        v52[0] = v14;
        v17 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white52PercentColor];
        v53[1] = v17;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

        v31 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v32];
        [buttonCopy setAttributedTitle:v31 forState:1];
        v50[1] = v15;
        v51[0] = v43;
        v50[0] = v14;
        v18 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white26PercentColor];
        v51[1] = v18;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

        v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v30];
        [buttonCopy setAttributedTitle:v29 forState:2];
        v49[0] = boldFont4;
        v48[0] = v14;
        v48[1] = v15;
        v19 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:blue100PercentColor];
        v49[1] = v19;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

        v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v28];
        [buttonCopy setAttributedTitle:v27 forState:4];
        v46[1] = v15;
        v47[0] = boldFont4;
        v46[0] = v14;
        [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white35PercentColor];
        v21 = v20 = boldFont4;
        v47[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v22];
        [buttonCopy setAttributedTitle:v23 forState:5];
        v44[1] = v15;
        v45[0] = v20;
        v44[0] = v14;
        v24 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v37];
        v45[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

        v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v25];
        [buttonCopy setAttributedTitle:v26 forState:6];

        goto LABEL_16;
      }

      if ([(ARCoachingButton *)self buttonStyle]== 1)
      {
        white75PercentColor = [(ARCoachingButton *)self blue100PercentColor];
        white52PercentColor = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self blue50PercentColor];
      }

      else
      {
        white75PercentColor = [(ARCoachingButton *)self black70PercentColor];
        white52PercentColor = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self black35PercentColor];
      }
      white26PercentColor = ;
      blue100PercentColor = [(ARCoachingButton *)self blue100PercentColor];
      white26PercentColor2 = [(ARCoachingButton *)self black70PercentColor];
    }

    white35PercentColor = white26PercentColor2;
    white35PercentColor2 = [(ARCoachingButton *)self blue50PercentColor];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_didUpdateDarkenColorsSetting:(id)setting
{
  button = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)_didUpdateContentSizeCategory:(id)category
{
  regularFont = self->_regularFont;
  self->_regularFont = 0;

  boldFont = self->_boldFont;
  self->_boldFont = 0;

  button = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)setTitle:(id)title
{
  [(ARCoachingWrappedButton *)self->_button setTitle:title forState:0];
  button = self->_button;
  controlStyle = [(ARCoachingButton *)self controlStyle];

  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:controlStyle];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v3 layoutSubviews];
  [(ARCoachingButton *)self updateCurrentAppearanceIfNeeded];
}

- (void)updateCurrentAppearanceIfNeeded
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

  if ([(ARCoachingButton *)self currentStyle]!= userInterfaceStyle)
  {
    blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

    if (userInterfaceStyle == 2)
    {
      if (blurredBackgroundView)
      {
        blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
        [blurredBackgroundView2 setControlStyle:3];
      }

      button = [(ARCoachingButton *)self button];
      selfCopy2 = self;
      v9 = button;
      controlStyle2 = 3;
    }

    else
    {
      if (blurredBackgroundView)
      {
        controlStyle = [(ARCoachingButton *)self controlStyle];
        blurredBackgroundView3 = [(ARCoachingButton *)self blurredBackgroundView];
        [blurredBackgroundView3 setControlStyle:controlStyle];
      }

      button = [(ARCoachingButton *)self button];
      controlStyle2 = [(ARCoachingButton *)self controlStyle];
      selfCopy2 = self;
      v9 = button;
    }

    [(ARCoachingButton *)selfCopy2 _updateTitleStyleForButton:v9 withControlStyle:controlStyle2];

    [(ARCoachingButton *)self setCurrentStyle:userInterfaceStyle];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v4 traitCollectionDidChange:change];
  [(ARCoachingButton *)self updateCurrentAppearanceIfNeeded];
}

- (UIEdgeInsets)largeImageInsets
{
  top = self->_largeImageInsets.top;
  left = self->_largeImageInsets.left;
  bottom = self->_largeImageInsets.bottom;
  right = self->_largeImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end