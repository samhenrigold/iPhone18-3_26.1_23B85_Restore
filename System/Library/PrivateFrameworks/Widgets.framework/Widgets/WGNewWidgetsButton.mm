@interface WGNewWidgetsButton
- (CGSize)_numberLabelSizeForText:(id)text withAttributes:(id)attributes;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WGNewWidgetsButton)init;
- (id)_attributedStringWithColor:(id)color;
- (id)_numberAttributedStringWithNumberText:(id)text attributes:(id)attributes;
- (id)_numberImageForNumberText:(id)text withAttributes:(id)attributes;
- (id)_numberTextAttributes;
- (id)_textAttributesWithColor:(id)color;
- (id)_textFont;
- (void)_buttonStateChanged:(id)changed;
- (void)_setAttributeTitleForButton:(id)button withColor:(id)color;
- (void)_updateButtons;
- (void)layoutSubviews;
- (void)setBadgeNumber:(unint64_t)number;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation WGNewWidgetsButton

- (WGNewWidgetsButton)init
{
  v14.receiver = self;
  v14.super_class = WGNewWidgetsButton;
  v2 = [(WGNewWidgetsButton *)&v14 init];
  v3 = v2;
  if (v2)
  {
    titleLabel = [(WGNewWidgetsButton *)v2 titleLabel];
    [titleLabel setNumberOfLines:0];

    v5 = [MEMORY[0x277D75220] buttonWithType:0];
    vibrantButton = v3->_vibrantButton;
    v3->_vibrantButton = v5;

    [(UIButton *)v3->_vibrantButton _setDrawsAsBackdropOverlayWithBlendMode:3];
    titleLabel2 = [(UIButton *)v3->_vibrantButton titleLabel];
    [titleLabel2 setNumberOfLines:0];

    [(WGNewWidgetsButton *)v3 addSubview:v3->_vibrantButton];
    v8 = [MEMORY[0x277D75220] buttonWithType:0];
    overlayButton = v3->_overlayButton;
    v3->_overlayButton = v8;

    titleLabel3 = [(UIButton *)v3->_overlayButton titleLabel];
    [titleLabel3 setNumberOfLines:0];

    [(WGNewWidgetsButton *)v3 addSubview:v3->_overlayButton];
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    numberAttributedStringCache = v3->_numberAttributedStringCache;
    v3->_numberAttributedStringCache = v11;

    [(UIButton *)v3->_overlayButton addTarget:v3 action:sel__buttonStateChanged_ forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)v3->_overlayButton addTarget:v3 action:sel__buttonPushed_ forControlEvents:64];
    [(WGNewWidgetsButton *)v3 setBadgeNumber:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIButton *)self->_overlayButton sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setBadgeNumber:(unint64_t)number
{
  self->_badgeNumber = number;
  number = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%u", number];
  [(WGNewWidgetsButton *)self setNumberText:number];

  v5 = MEMORY[0x277CCACA8];
  v6 = _os_feature_enabled_impl();
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = @"NEW_WIDGETS_AVAILABLE_LEGACY";
  }

  else
  {
    v9 = @"NEW_WIDGETS_AVAILABLE";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2883435D8 table:@"Widgets"];
  v11 = [v5 localizedStringWithFormat:v10, self->_badgeNumber];
  [(WGNewWidgetsButton *)self setText:v11];

  [(WGNewWidgetsButton *)self _updateButtons];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(UIButton *)self->_vibrantButton setHighlighted:?];
  overlayButton = self->_overlayButton;

  [(UIButton *)overlayButton setHighlighted:highlightedCopy];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WGNewWidgetsButton;
  [(WGNewWidgetsButton *)&v11 layoutSubviews];
  [(WGNewWidgetsButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_vibrantButton setFrame:?];
  [(UIButton *)self->_overlayButton setFrame:v4, v6, v8, v10];
}

- (void)_buttonStateChanged:(id)changed
{
  [(UIButton *)self->_vibrantButton setSelected:[(UIButton *)self->_overlayButton isSelected]];
  vibrantButton = self->_vibrantButton;
  isHighlighted = [(UIButton *)self->_overlayButton isHighlighted];

  [(UIButton *)vibrantButton setHighlighted:isHighlighted];
}

- (void)_updateButtons
{
  vibrantButton = self->_vibrantButton;
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(WGNewWidgetsButton *)self _setAttributeTitleForButton:vibrantButton withColor:primaryColor];

  overlayButton = self->_overlayButton;
  primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(WGNewWidgetsButton *)self _setAttributeTitleForButton:overlayButton withColor:primaryColor2];

  [(WGNewWidgetsButton *)self setNeedsLayout];
}

- (void)_setAttributeTitleForButton:(id)button withColor:(id)color
{
  colorCopy = color;
  buttonCopy = button;
  v8 = [(WGNewWidgetsButton *)self _attributedStringWithColor:colorCopy];
  [buttonCopy setAttributedTitle:v8 forState:0];

  v9 = [(WGNewWidgetsButton *)self _attributedStringWithColor:colorCopy];

  [buttonCopy setAttributedTitle:v9 forState:4];
  [buttonCopy setAttributedTitle:v9 forState:1];
}

- (id)_textFont
{
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76940] hiFontStyle:1];

  return v3;
}

- (id)_textAttributesWithColor:(id)color
{
  colorCopy = color;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _textFont = [(WGNewWidgetsButton *)self _textFont];
  if (_textFont)
  {
    [dictionary setObject:_textFont forKey:*MEMORY[0x277D740A8]];
  }

  if (colorCopy)
  {
    [dictionary setObject:colorCopy forKey:*MEMORY[0x277D740C0]];
  }

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v8 = [defaultParagraphStyle mutableCopy];

  [v8 setAlignment:1];
  [dictionary setObject:v8 forKey:*MEMORY[0x277D74118]];

  return dictionary;
}

- (id)_numberTextAttributes
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _numberFont = [(WGNewWidgetsButton *)self _numberFont];
  if (_numberFont)
  {
    [dictionary setObject:_numberFont forKey:*MEMORY[0x277D740A8]];
  }

  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    [(_UILegibilitySettings *)legibilitySettings shadowColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v6 = ;
  [dictionary setObject:v6 forKey:*MEMORY[0x277D740C0]];

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v8 = [defaultParagraphStyle mutableCopy];

  [v8 setAlignment:1];
  [dictionary setObject:v8 forKey:*MEMORY[0x277D74118]];

  return dictionary;
}

- (id)_attributedStringWithColor:(id)color
{
  colorCopy = color;
  numberText = [(WGNewWidgetsButton *)self numberText];
  _numberTextAttributes = [(WGNewWidgetsButton *)self _numberTextAttributes];
  v7 = [(WGNewWidgetsButton *)self _numberAttributedStringWithNumberText:numberText attributes:_numberTextAttributes];

  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  text = [(WGNewWidgetsButton *)self text];
  v10 = [(WGNewWidgetsButton *)self _textAttributesWithColor:colorCopy];

  v11 = [v8 initWithString:text attributes:v10];
  string = [v11 string];
  numberText2 = [(WGNewWidgetsButton *)self numberText];
  v14 = [string rangeOfString:numberText2];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 replaceCharactersInRange:v14 withAttributedString:{v16, v7}];
  }

  return v11;
}

- (id)_numberAttributedStringWithNumberText:(id)text attributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:textCopy];
  if (attributesCopy)
  {
    v9 = [attributesCopy description];
    [v8 appendString:v9];
  }

  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    primaryColor = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    v12 = [primaryColor description];
    [v8 appendString:v12];

    shadowColor = [(_UILegibilitySettings *)self->_legibilitySettings shadowColor];
    v14 = [shadowColor description];
    [v8 appendString:v14];
  }

  v15 = [(NSCache *)self->_numberAttributedStringCache objectForKey:v8];
  if (!v15)
  {
    v16 = [(WGNewWidgetsButton *)self _numberImageForNumberText:textCopy withAttributes:attributesCopy];
    v17 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
    [v17 setImage:v16];
    _numberFont = [(WGNewWidgetsButton *)self _numberFont];
    descender = [_numberFont descender];
    _WGMainScreenScale(descender, v20);
    BSFloatFloorForScale();
    v22 = v21;

    [v16 size];
    [v17 setBounds:{0.0, v22, v23, v24}];
    v15 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v17];
    [(NSCache *)self->_numberAttributedStringCache setObject:v15 forKey:v8];
  }

  return v15;
}

- (id)_numberImageForNumberText:(id)text withAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(WGNewWidgetsButton *)self _numberLabelSizeForText:text withAttributes:attributesCopy];
  width = v23.width;
  height = v23.height;
  UIGraphicsBeginImageContextWithOptions(v23, 0, 0.0);
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [primaryColor set];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*MEMORY[0x277CBF348] cornerRadius:{v11, width, height, height * 0.5}];
  [v12 fill];
  if (self->_badgeNumber == 1)
  {
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = width;
    v24.size.height = height;
    v25 = CGRectOffset(v24, -0.5, 0.0);
    WGRectRoundForMainScreenScale(v13, v14, v25.origin.x, v25.origin.y, v25.size.width, v25.size.height);
    v10 = v15;
    v11 = v16;
    width = v17;
    height = v18;
  }

  numberText = [(WGNewWidgetsButton *)self numberText];
  [numberText drawInRect:attributesCopy withAttributes:{v10, v11, width, height}];

  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

- (CGSize)_numberLabelSizeForText:(id)text withAttributes:(id)attributes
{
  textCopy = text;
  [textCopy sizeWithAttributes:attributes];
  v7 = [textCopy length];

  if (v7 == 1)
  {
    _WGMainScreenScale(v8, v9);
    v10 = BSFloatCeilForScale();
    v13 = v12;
  }

  else
  {
    _numberFont = [(WGNewWidgetsButton *)self _numberFont];
    capHeight = [_numberFont capHeight];
    _WGMainScreenScale(capHeight, v16);
    BSFloatCeilForScale();
    v13 = v17;
  }

  _WGMainScreenScale(v10, v11);
  BSFloatCeilForScale();
  v19 = v18;
  v20 = v13;
  result.height = v19;
  result.width = v20;
  return result;
}

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);

  [(WGNewWidgetsButton *)self _updateButtons];
}

@end