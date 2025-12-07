@interface PKPaymentTransactionView
- (BOOL)_shouldUseStackedLayout;
- (BOOL)shouldShowTransactionPreviewForTouchAtPoint:(CGPoint)point inView:(id)view;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionView)initWithFrame:(CGRect)frame;
- (id)_disclosureView;
- (void)_updateAvatarView;
- (void)_updateImageViewDynamicColors;
- (void)_updatePrimaryLabelString;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setAllowPrimaryStringExpansion:(BOOL)expansion;
- (void)setBadgeString:(id)string;
- (void)setHideBadgeBackground:(BOOL)background;
- (void)setHideSecondaryBadgeSymbolBackground:(BOOL)background;
- (void)setPrimaryColor:(id)color;
- (void)setPrimaryImage:(id)image animated:(BOOL)animated;
- (void)setPrimaryString:(id)string;
- (void)setSecondaryBadgeSymbol:(id)symbol;
- (void)setSecondaryBadgeSymbolConfiguration:(id)configuration;
- (void)setSecondaryColor:(id)color;
- (void)setSecondaryString:(id)string;
- (void)setShowsAvatarView:(BOOL)view;
- (void)setShowsDisclosureView:(BOOL)view;
- (void)setStrokeImage:(BOOL)image;
- (void)setTertiaryString:(id)string;
- (void)setTransactionCategoryImage:(id)image;
- (void)setTransactionValueAttributedText:(id)text;
@end

@implementation PKPaymentTransactionView

- (PKPaymentTransactionView)initWithFrame:(CGRect)frame
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKPaymentTransactionView;
  v3 = [(PKPaymentTransactionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentTransactionView *)v3 createSubviews];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [(PKPaymentTransactionView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_102];
  }

  return v4;
}

void __42__PKPaymentTransactionView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFonts];
  [v2 _updateImageViewDynamicColors];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKPaymentTransactionView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 3.40282347e38];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)createSubviews
{
  if (!self->_primaryLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = self->_tertiaryLabel;
    self->_tertiaryLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    transactionValueLabel = self->_transactionValueLabel;
    self->_transactionValueLabel = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    badgeLabel = self->_badgeLabel;
    self->_badgeLabel = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bonusImageView = self->_bonusImageView;
    self->_bonusImageView = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    transactionCategoryImageView = self->_transactionCategoryImageView;
    self->_transactionCategoryImageView = v15;

    v17 = self->_primaryLabel;
    defaultPrimaryColor = [(PKPaymentTransactionView *)self defaultPrimaryColor];
    [(UILabel *)v17 setTextColor:defaultPrimaryColor];

    v19 = self->_secondaryLabel;
    defaultSecondaryColor = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    [(UILabel *)v19 setTextColor:defaultSecondaryColor];

    v21 = self->_tertiaryLabel;
    defaultSecondaryColor2 = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    [(UILabel *)v21 setTextColor:defaultSecondaryColor2];

    v23 = self->_badgeLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:secondaryLabelColor];

    v25 = self->_badgeLabel;
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UILabel *)v25 setBackgroundColor:quaternarySystemFillColor];

    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    layer = [(UILabel *)self->_badgeLabel layer];
    [layer setCornerRadius:4.0];

    layer2 = [(UILabel *)self->_badgeLabel layer];
    [layer2 setMasksToBounds:1];

    v29 = self->_bonusImageView;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v29 setTintColor:secondaryLabelColor2];

    v31 = self->_bonusImageView;
    quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v31 setBackgroundColor:quaternarySystemFillColor2];

    [(UIImageView *)self->_bonusImageView setContentMode:4];
    [(UIImageView *)self->_bonusImageView setHidden:1];
    layer3 = [(UIImageView *)self->_bonusImageView layer];
    [layer3 setCornerRadius:4.0];
    v33 = *MEMORY[0x1E69796E8];
    [layer3 setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer3 setMasksToBounds:1];
    v34 = self->_transactionCategoryImageView;
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v34 setTintColor:secondaryLabelColor3];

    v36 = self->_transactionCategoryImageView;
    quaternarySystemFillColor3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v36 setBackgroundColor:quaternarySystemFillColor3];

    [(UIImageView *)self->_transactionCategoryImageView setContentMode:4];
    [(UIImageView *)self->_transactionCategoryImageView setHidden:1];
    layer4 = [(UIImageView *)self->_transactionCategoryImageView layer];
    traitCollection = [(PKPaymentTransactionView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v41 = PKMultiplierForContentSizeCategory(preferredContentSizeCategory);

    [layer4 setCornerRadius:v41 * 4.0];
    [layer4 setCornerCurve:v33];
    [layer4 setMasksToBounds:1];
    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];
    [(UILabel *)self->_transactionValueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [(UILabel *)self->_badgeLabel setAccessibilityIdentifier:*MEMORY[0x1E69B94F0]];
    [(UIImageView *)self->_transactionCategoryImageView setAccessibilityIdentifier:*MEMORY[0x1E69B9D40]];
    [(PKPaymentTransactionView *)self addSubview:self->_primaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_secondaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_tertiaryLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_transactionValueLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_badgeLabel];
    [(PKPaymentTransactionView *)self addSubview:self->_bonusImageView];
    [(PKPaymentTransactionView *)self addSubview:self->_transactionCategoryImageView];
    [(PKPaymentTransactionView *)self setStrokeImage:1];
    [(PKPaymentTransactionView *)self resetFonts];
    [(PKPaymentTransactionView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }
}

- (void)resetFonts
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_secondaryLabel setNumberOfLines:v5];
  [(UILabel *)self->_tertiaryLabel setNumberOfLines:v5];
  v6 = PKUIGetMinScreenWidthType();
  primaryLabel = self->_primaryLabel;
  v8 = *MEMORY[0x1E69DDD80];
  v9 = v6 == 0;
  if (v6)
  {
    v10 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v10 = *MEMORY[0x1E69DDD80];
  }

  v11 = *MEMORY[0x1E69DDC90];
  if (v9)
  {
    v12 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v12 = *MEMORY[0x1E69DDD80];
  }

  v13 = PKFontForDefaultDesign(v10, *MEMORY[0x1E69DDC90], 32770, 0);
  [(UILabel *)primaryLabel setFont:v13];

  v25 = PKFontForDefaultDesign(v12, v11, 0x8000, 0);
  [(UILabel *)self->_secondaryLabel setFont:v25];
  [(UILabel *)self->_tertiaryLabel setFont:v25];
  transactionValueLabel = self->_transactionValueLabel;
  v15 = PKFontForDefaultDesign(v8, v11, 0, 8);
  [(UILabel *)transactionValueLabel setFont:v15];

  v16 = MEMORY[0x1E69DDD08];
  if (self->_hideBadgeBackground)
  {
    v17 = v25;
  }

  else
  {
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], v11, 32770, 0);
  }

  v18 = v17;
  [(UILabel *)self->_badgeLabel setFont:v17];
  _shouldUseStackedLayout = [(PKPaymentTransactionView *)self _shouldUseStackedLayout];
  v20 = self->_transactionValueLabel;
  if (_shouldUseStackedLayout)
  {
    [(UILabel *)v20 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_transactionValueLabel setMinimumScaleFactor:0.5];
  }

  else
  {
    [(UILabel *)v20 setAdjustsFontSizeToFitWidth:0];
  }

  if (self->_hideSecondaryBadgeSymbolBackground)
  {
    v21 = [MEMORY[0x1E69DCAD8] configurationWithFont:v25];
  }

  else
  {
    v22 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*v16];
    v23 = MEMORY[0x1E69DCAD8];
    [v22 scaledValueForValue:8.0];
    v21 = [v23 configurationWithPointSize:7 weight:3 scale:?];
  }

  if (self->_secondaryBadgeSymbolConfiguration)
  {
    v24 = [v21 configurationByApplyingConfiguration:?];

    v21 = v24;
  }

  [(UIImageView *)self->_bonusImageView setPreferredSymbolConfiguration:v21];
}

- (BOOL)_shouldUseStackedLayout
{
  traitCollection = [(PKPaymentTransactionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC40]) == NSOrderedDescending;

  return v4;
}

- (void)setPrimaryString:(id)string
{
  v4 = MEMORY[0x1E696AB08];
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @" ";
  }

  v9 = v8;

  v10 = self->_primaryString;
  v11 = v9;
  v14 = v11;
  if (v10 == v11)
  {

    goto LABEL_14;
  }

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

LABEL_13:
    objc_storeStrong(&self->_primaryString, v8);
    [(PKPaymentTransactionView *)self _updatePrimaryLabelString];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    goto LABEL_14;
  }

  v13 = [(NSString *)v10 isEqualToString:v11];

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setAllowPrimaryStringExpansion:(BOOL)expansion
{
  if (self->_allowPrimaryStringExpansion != expansion)
  {
    self->_allowPrimaryStringExpansion = expansion;
    [(PKPaymentTransactionView *)self _updatePrimaryLabelString];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)_updatePrimaryLabelString
{
  [(UILabel *)self->_primaryLabel setText:self->_primaryString];
  if (!self->_primaryString || (LODWORD(v3) = 1.0, !self->_allowPrimaryStringExpansion))
  {
    v3 = 0.0;
  }

  primaryLabel = self->_primaryLabel;

  [(UILabel *)primaryLabel _setHyphenationFactor:v3];
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  v10 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v6 = +[PKPaymentTransactionView appearance];
    primaryColor = [v6 primaryColor];
    v8 = primaryColor;
    if (primaryColor)
    {
      defaultPrimaryColor = primaryColor;
    }

    else
    {
      defaultPrimaryColor = [(PKPaymentTransactionView *)self defaultPrimaryColor];
    }

    v5 = defaultPrimaryColor;
  }

  [(UILabel *)self->_primaryLabel setTextColor:v5];
}

- (void)setSecondaryString:(id)string
{
  [(UILabel *)self->_secondaryLabel setText:string];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setSecondaryColor:(id)color
{
  colorCopy = color;
  v12 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
  }

  else
  {
    v6 = +[PKPaymentTransactionView appearance];
    secondaryColor = [v6 secondaryColor];
    v8 = secondaryColor;
    if (secondaryColor)
    {
      defaultSecondaryColor = secondaryColor;
    }

    else
    {
      defaultSecondaryColor = [(PKPaymentTransactionView *)self defaultSecondaryColor];
    }

    v5 = defaultSecondaryColor;
  }

  secondaryColor = self->_secondaryColor;
  self->_secondaryColor = v5;
  v11 = v5;

  [(UILabel *)self->_secondaryLabel setTextColor:v11];
}

- (void)setTertiaryString:(id)string
{
  [(UILabel *)self->_tertiaryLabel setText:string];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setBadgeString:(id)string
{
  badgeLabel = self->_badgeLabel;
  stringCopy = string;
  [(UILabel *)badgeLabel setText:stringCopy];
  v6 = [stringCopy length];

  [(UILabel *)self->_badgeLabel setHidden:v6 == 0];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setHideBadgeBackground:(BOOL)background
{
  if (self->_hideBadgeBackground != background)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    self->_hideBadgeBackground = background;
    badgeLabel = self->_badgeLabel;
    if (background)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    }
    v11 = ;
    [(UILabel *)badgeLabel setBackgroundColor:v11, v6, v12, v13, v14, v7];

    [(PKPaymentTransactionView *)self resetFonts];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setTransactionValueAttributedText:(id)text
{
  [(UILabel *)self->_transactionValueLabel setAttributedText:text];

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (void)setSecondaryBadgeSymbol:(id)symbol
{
  symbolCopy = symbol;
  v6 = self->_secondaryBadgeSymbol;
  v7 = symbolCopy;
  v11 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_secondaryBadgeSymbol, symbol);
    bonusImageView = self->_bonusImageView;
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:self->_secondaryBadgeSymbol];
    [(UIImageView *)bonusImageView setImage:v10];

    [(UIImageView *)self->_bonusImageView setHidden:v11 == 0];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    [(PKPaymentTransactionView *)self layoutIfNeeded];
  }

LABEL_9:
}

- (void)setHideSecondaryBadgeSymbolBackground:(BOOL)background
{
  if (self->_hideSecondaryBadgeSymbolBackground != background)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    self->_hideSecondaryBadgeSymbolBackground = background;
    bonusImageView = self->_bonusImageView;
    if (background)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    }
    v11 = ;
    [(UIImageView *)bonusImageView setBackgroundColor:v11, v6, v12, v13, v14, v7];

    [(PKPaymentTransactionView *)self resetFonts];

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setSecondaryBadgeSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryBadgeSymbolConfiguration, configuration);
    [(PKPaymentTransactionView *)self resetFonts];
    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (void)setTransactionCategoryImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_transactionCategoryImageView image];

  if (image != imageCopy)
  {
    [(UIImageView *)self->_transactionCategoryImageView setImage:imageCopy];
    [(UIImageView *)self->_transactionCategoryImageView setHidden:imageCopy == 0];
    [(PKPaymentTransactionView *)self setNeedsLayout];
    [(PKPaymentTransactionView *)self layoutIfNeeded];
  }
}

- (void)setStrokeImage:(BOOL)image
{
  if (self->_strokeImage == !image)
  {
    self->_strokeImage = image;
    primaryImageView = self->_primaryImageView;
    if (primaryImageView)
    {
      layer = [(UIImageView *)primaryImageView layer];
      v5 = 0.0;
      if (self->_strokeImage)
      {
        v5 = PKUIPixelLength();
      }

      [layer setBorderWidth:v5];
    }
  }
}

- (void)setPrimaryImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_primaryImage != imageCopy)
  {
    objc_storeStrong(&self->_primaryImage, image);
    if (self->_primaryImage)
    {
      [(PKPaymentTransactionView *)self setShowsAvatarView:0];
      primaryImageView = self->_primaryImageView;
      if (primaryImageView)
      {
        if (animatedCopy)
        {
          v9 = primaryImageView;
          v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
          v11 = self->_primaryImageView;
          self->_primaryImageView = v10;

          [(UIImageView *)self->_primaryImageView setContentMode:1];
          [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
          [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
          [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
          layer = [(UIImageView *)self->_primaryImageView layer];
          v13 = 0.0;
          if (self->_strokeImage)
          {
            v13 = PKUIPixelLength();
          }

          [layer setBorderWidth:v13];

          [(UIImageView *)self->_primaryImageView setImage:self->_primaryImage];
          [(UIImageView *)self->_primaryImageView setAlpha:0.0];
          v14 = MEMORY[0x1E69DD250];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke;
          v28[3] = &unk_1E8010A10;
          v28[4] = self;
          v29 = v9;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke_2;
          v26[3] = &unk_1E8011D28;
          v27 = v29;
          image = v29;
          [v14 pkui_animateUsingOptions:4 animations:v28 completion:v26];
        }

        else
        {
          image = [(UIImageView *)primaryImageView image];
          [(UIImageView *)self->_primaryImageView setImage:self->_primaryImage];
          image2 = [(UIImageView *)self->_primaryImageView image];

          if (image2 == image)
          {
            [(UIImageView *)self->_primaryImageView removeFromSuperview];
            v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
            v22 = self->_primaryImageView;
            self->_primaryImageView = v21;

            [(UIImageView *)self->_primaryImageView setContentMode:1];
            [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
            [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
            [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
            layer2 = [(UIImageView *)self->_primaryImageView layer];
            v24 = 0.0;
            if (self->_strokeImage)
            {
              v24 = PKUIPixelLength();
            }

            [layer2 setBorderWidth:v24];
          }
        }
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_primaryImage];
        v18 = self->_primaryImageView;
        self->_primaryImageView = v17;

        [(UIImageView *)self->_primaryImageView setContentMode:1];
        [(UIImageView *)self->_primaryImageView setClipsToBounds:1];
        [(UIImageView *)self->_primaryImageView _setContinuousCornerRadius:8.0];
        [(PKPaymentTransactionView *)self _updateImageViewDynamicColors];
        image = [(UIImageView *)self->_primaryImageView layer];
        v19 = 0.0;
        if (self->_strokeImage)
        {
          v19 = PKUIPixelLength();
        }

        [(UIImageView *)image setBorderWidth:v19];
      }

      superview = [(UIImageView *)self->_primaryImageView superview];

      if (!superview)
      {
        [(PKPaymentTransactionView *)self addSubview:self->_primaryImageView];
        goto LABEL_19;
      }
    }

    else
    {
      superview2 = [(UIImageView *)self->_primaryImageView superview];

      if (superview2)
      {
        [(UIImageView *)self->_primaryImageView removeFromSuperview];
LABEL_19:
        [(PKPaymentTransactionView *)self setNeedsLayout];
        [(PKPaymentTransactionView *)self layoutIfNeeded];
      }
    }
  }
}

uint64_t __53__PKPaymentTransactionView_setPrimaryImage_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)_updateImageViewDynamicColors
{
  traitCollection = [(PKPaymentTransactionView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKPaymentTransactionView__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v4);
}

void __57__PKPaymentTransactionView__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)setShowsAvatarView:(BOOL)view
{
  if (self->_showsAvatarView == !view)
  {
    self->_showsAvatarView = view;
    [(PKPaymentTransactionView *)self _updateAvatarView];
  }
}

- (void)_updateAvatarView
{
  if (self->_showsAvatarView)
  {
    v3 = [(PKPaymentTransactionView *)self setPrimaryImage:0];
    if (self->_avatarView)
    {
      return;
    }

    v4 = [objc_alloc(getCNAvatarViewClass_0(v3)) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    avatarView = self->_avatarView;
    self->_avatarView = v4;

    [(CNAvatarView *)self->_avatarView setUserInteractionEnabled:0];
    [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
    [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
    [(PKPaymentTransactionView *)self addSubview:self->_avatarView];
  }

  else
  {
    v6 = self->_avatarView;
    if (!v6)
    {
      return;
    }

    [(CNAvatarView *)v6 removeFromSuperview];
    v7 = self->_avatarView;
    self->_avatarView = 0;
  }

  [(PKPaymentTransactionView *)self setNeedsLayout];
}

- (BOOL)shouldShowTransactionPreviewForTouchAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  avatarView = self->_avatarView;
  if (avatarView && ([(CNAvatarView *)avatarView isHidden]& 1) == 0)
  {
    [(CNAvatarView *)self->_avatarView convertPoint:viewCopy fromView:x, y];
    v11 = v10;
    v13 = v12;
    [(CNAvatarView *)self->_avatarView bounds];
    v15.x = v11;
    v15.y = v13;
    v9 = !CGRectContainsPoint(v16, v15);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)setShowsDisclosureView:(BOOL)view
{
  if (self->_showsDisclosureView != view)
  {
    self->_showsDisclosureView = view;
    if (view)
    {
      _disclosureView = [(PKPaymentTransactionView *)self _disclosureView];
      superview = [(UIImageView *)self->_disclosureView superview];

      if (superview)
      {
        return;
      }

      [(PKPaymentTransactionView *)self addSubview:self->_disclosureView];
    }

    else
    {
      [(UIImageView *)self->_disclosureView removeFromSuperview];
    }

    [(PKPaymentTransactionView *)self setNeedsLayout];
  }
}

- (id)_disclosureView
{
  disclosureView = self->_disclosureView;
  if (!disclosureView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = PKUISmallChevronImage();
    v6 = [v4 initWithImage:v5];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v6 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v6 setContentMode:1];
    v8 = self->_disclosureView;
    self->_disclosureView = v6;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldUseStackedLayout = [(PKPaymentTransactionView *)self _shouldUseStackedLayout];
  _shouldReverseLayoutDirection = [(PKPaymentTransactionView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v9 = CGRectMaxXEdge;
  }

  else
  {
    v9 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
  {
    v10 = CGRectMinXEdge;
  }

  else
  {
    v10 = CGRectMaxXEdge;
  }

  if (_shouldUseStackedLayout)
  {
    font = [(UILabel *)self->_transactionValueLabel font];
    [font lineHeight];
    v13 = v12;
    [font capHeight];
    v15 = v13 - v14;
    [font descender];
    v17.n128_f64[0] = v15 + v16;
    PKFloatRoundToPixel(v17, v18);
    v20 = v19;

    v21 = 16.0;
    v22 = 12.0;
  }

  else
  {
    text = [(UILabel *)self->_primaryLabel text];
    v20 = 0.0;
    v24 = 0.0;
    if ([text length])
    {
      text2 = [(UILabel *)self->_secondaryLabel text];
      if (![text2 length])
      {
        text3 = [(UILabel *)self->_tertiaryLabel text];
        if ([text3 length])
        {
          v24 = 0.0;
        }

        else
        {
          v24 = 9.0;
        }
      }
    }

    v21 = v24 + 16.0;
    v22 = v24 + 12.0;
  }

  text4 = [(UILabel *)self->_badgeLabel text];
  v412 = [text4 length];

  isHidden = [(UIImageView *)self->_bonusImageView isHidden];
  isHidden2 = [(UIImageView *)self->_transactionCategoryImageView isHidden];
  if (isHidden2)
  {
    v28 = *MEMORY[0x1E695F060];
    v400 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    traitCollection = [(PKPaymentTransactionView *)self traitCollection];
    v28 = PKTransactionCategoryImageSizeForTraitCollection(traitCollection);
    v400 = v30;
  }

  memset(&slice, 0, sizeof(slice));
  v31 = v21;
  v32 = y + v21;
  v410 = width;
  v411 = y;
  v33 = width + -32.0;
  v401 = v31;
  v402 = v22;
  v34 = height - (v22 + v31);
  remainder.origin.x = x + 16.0;
  remainder.origin.y = v32;
  remainder.size.width = v33;
  remainder.size.height = v34;
  v403 = x;
  if (!_shouldUseStackedLayout)
  {
    text5 = [(UILabel *)self->_tertiaryLabel text];
    v50 = [text5 length];

    if (v50)
    {
      v393 = PKContentAlignmentMake();
    }

    else
    {
      v393 = *MEMORY[0x1E69BB7F8];
    }

    if (!self->_allowPrimaryStringExpansion)
    {
      goto LABEL_37;
    }

    p_primaryLabel = &self->_primaryLabel;
    text6 = [(UILabel *)self->_primaryLabel text];
    if (!text6)
    {
      goto LABEL_37;
    }

    v53 = text6;
    text7 = [(UILabel *)self->_secondaryLabel text];
    if (text7)
    {
      v55 = text7;
      text8 = [(UILabel *)self->_tertiaryLabel text];

      if (text8)
      {
LABEL_37:
        p_primaryLabel = &self->_primaryLabel;
        v57 = 1;
LABEL_38:
        [(UILabel *)*p_primaryLabel setNumberOfLines:v57];
        v404 = *(MEMORY[0x1E695F058] + 16);
        v407 = *MEMORY[0x1E695F058];
        v421.origin = *MEMORY[0x1E695F058];
        v421.size = v404;
        if (self->_avatarView || self->_primaryImage && self->_primaryImageView)
        {
          v426.origin.x = x + 16.0;
          v426.origin.y = v32;
          v426.size.width = v33;
          v426.size.height = v34;
          CGRectDivide(v426, &v421, &remainder, 38.0, v9);
          CGRectDivide(remainder, &slice, &remainder, 13.0, v9);
          v33 = remainder.size.width;
          v34 = remainder.size.height;
        }

        v420.origin = v407;
        v420.size = v404;
        [(UIImageView *)self->_disclosureView sizeThatFits:v33, v34];
        v388 = v59;
        v389 = *&v58;
        CGRectDivide(remainder, &v420, &remainder, v58, v10);
        CGRectDivide(remainder, &slice, &remainder, 8.0, v10);
        [(UILabel *)self->_transactionValueLabel sizeThatFits:remainder.size.width, remainder.size.height];
        v62 = v61;
        v64 = v63;
        if (v412)
        {
          [(UILabel *)self->_badgeLabel sizeThatFits:remainder.size.width, remainder.size.height];
          v60 = v65 + 10.0;
          if (self->_hideBadgeBackground)
          {
            v67 = v66;
          }

          else
          {
            v67 = 18.0;
          }

          if (self->_hideBadgeBackground)
          {
            v68 = v65;
          }

          else
          {
            v68 = v65 + 10.0;
          }
        }

        else
        {
          v68 = *MEMORY[0x1E695F060];
          v67 = *(MEMORY[0x1E695F060] + 8);
        }

        if (isHidden)
        {
          v69 = *MEMORY[0x1E695F060];
          v70 = *(MEMORY[0x1E695F060] + 8);
        }

        else
        {
          [(UIImageView *)self->_bonusImageView sizeThatFits:remainder.size.width, remainder.size.height, v60];
        }

        v71 = 18.0;
        if (v67 != 0.0)
        {
          v71 = v67;
        }

        v390 = *&v71;
        v391 = v69 + 6.0;
        if (!isHidden)
        {
          v70 = v71;
        }

        v394 = v70;
        if (!isHidden)
        {
          v69 = v69 + 6.0;
        }

        v392 = v68;
        v72 = fmax(v62, v28 + v68 + v69 + 6.0);
        v73 = remainder.size.width - v72 + -10.0;
        v419.origin = v407;
        v419.size = v404;
        CGRectDivide(remainder, &v419, &remainder, v72, v10);
        rect.origin = v407;
        rect.size = v404;
        CGRectDivide(remainder, &rect, &remainder, v73, v9);
        [(UILabel *)self->_primaryLabel sizeThatFits:rect.size.width, rect.size.height];
        v395 = v74;
        v76 = v75;
        [(UILabel *)self->_secondaryLabel sizeThatFits:rect.size.width, rect.size.height];
        v396 = v77;
        v79 = v78;
        text9 = [(UILabel *)self->_tertiaryLabel text];
        v398 = v28;
        if ([text9 length])
        {
          [(UILabel *)self->_tertiaryLabel sizeThatFits:rect.size.width, rect.size.height];
          v82 = v81;
          v84 = v83;
        }

        else
        {
          v82 = *MEMORY[0x1E695F060];
          v84 = *(MEMORY[0x1E695F060] + 8);
        }

        v85 = fmax(v76, 0.0);
        v86 = -0.0;
        if (v79 > 0.0)
        {
          v86 = v79;
        }

        v87 = v85 + v86;
        if (v84 > 0.0)
        {
          v87 = v87 + v84;
        }

        v88 = fmax(v87, v64 + fmax(v67, *&v400));
        rect.size.height = v88;
        v89 = v88;
        if (!self->_isTemplateLayout)
        {
          v387 = v82;
          font2 = [(UILabel *)self->_transactionValueLabel font];
          [font2 lineHeight];
          v92 = v91;

          if (self->_showsDisclosureView)
          {
            memset(&v417, 0, sizeof(v417));
            CGRectDivide(v420, &v420, &v417, v92, CGRectMinYEdge);
            disclosureView = self->_disclosureView;
            v94 = PKContentAlignmentMake();
            v95.n128_u64[0] = *&v420.origin.x;
            v96.n128_u64[0] = *&v420.origin.y;
            v97.n128_u64[0] = *&v420.size.width;
            v98.n128_u64[0] = *&v420.size.height;
            v100.n128_u64[0] = v388;
            v99.n128_u64[0] = v389;
            PKSizeAlignedInRect(v94, v99, v100, v95, v96, v97, v98, v101);
            [(UIImageView *)disclosureView setFrame:?];
          }

          CGRectDivide(v419, &slice, &v419, v92, CGRectMinYEdge);
          transactionValueLabel = self->_transactionValueLabel;
          v103 = PKContentAlignmentMake();
          v104.n128_u64[0] = *&slice.origin.x;
          v105.n128_u64[0] = *&slice.origin.y;
          v106.n128_u64[0] = *&slice.size.width;
          v107.n128_u64[0] = *&slice.size.height;
          v108.n128_f64[0] = v62;
          v109.n128_f64[0] = v64;
          PKSizeAlignedInRect(v103, v108, v109, v104, v105, v106, v107, v110);
          [(UILabel *)transactionValueLabel setFrame:?];
          CGRectDivide(v419, &slice, &v419, 2.0, CGRectMinYEdge);
          v417.origin = v407;
          v417.size = v404;
          CGRectDivide(v419, &v417, &v419, fmax(fmax(v67, v394), *&v400), CGRectMinYEdge);
          if (v412)
          {
            CGRectDivide(v417, &slice, &v417, v392, v10);
            badgeLabel = self->_badgeLabel;
            v112 = PKContentAlignmentMake();
            v113.n128_u64[0] = *&slice.origin.x;
            v114.n128_u64[0] = *&slice.origin.y;
            v115.n128_u64[0] = *&slice.size.width;
            v116.n128_u64[0] = *&slice.size.height;
            v117.n128_f64[0] = v392;
            v118.n128_f64[0] = v67;
            PKSizeAlignedInRect(v112, v117, v118, v113, v114, v115, v116, v119);
            [(UILabel *)badgeLabel setFrame:?];
            CGRectDivide(v417, &slice, &v417, 6.0, v10);
          }

          v82 = v387;
          if ((isHidden & 1) == 0)
          {
            CGRectDivide(v417, &slice, &v417, v391, v10);
            bonusImageView = self->_bonusImageView;
            v121 = PKContentAlignmentMake();
            v122.n128_u64[0] = *&slice.origin.x;
            v123.n128_u64[0] = *&slice.origin.y;
            v124.n128_u64[0] = *&slice.size.width;
            v125.n128_u64[0] = *&slice.size.height;
            v126.n128_f64[0] = v391;
            v127.n128_u64[0] = v390;
            PKSizeAlignedInRect(v121, v126, v127, v122, v123, v124, v125, v128);
            [(UIImageView *)bonusImageView setFrame:?];
            CGRectDivide(v417, &slice, &v417, 6.0, v10);
          }

          if ((isHidden2 & 1) == 0)
          {
            CGRectDivide(v417, &slice, &v417, v398, v10);
            transactionCategoryImageView = self->_transactionCategoryImageView;
            v130 = PKContentAlignmentMake();
            v131.n128_u64[0] = *&slice.origin.x;
            v132.n128_u64[0] = *&slice.origin.y;
            v133.n128_u64[0] = *&slice.size.width;
            v134.n128_u64[0] = *&slice.size.height;
            v135.n128_f64[0] = v398;
            v136.n128_u64[0] = v400;
            PKSizeAlignedInRect(v130, v135, v136, v131, v132, v133, v134, v137);
            [(UIImageView *)transactionCategoryImageView setFrame:?];
          }

          v89 = rect.size.height;
        }

        memset(&v417, 0, sizeof(v417));
        v138 = rect.origin.y;
        v139 = rect.size.width;
        v140 = rect.origin.x;
        v141 = rect.size.width;
        CGRectDivide(*(&v89 - 3), &v417, &rect, v76, CGRectMinYEdge);
        if (!self->_isTemplateLayout)
        {
          primaryLabel = self->_primaryLabel;
          v143 = PKContentAlignmentMake();
          v144.n128_u64[0] = *&v417.origin.x;
          v145.n128_u64[0] = *&v417.origin.y;
          v146.n128_u64[0] = *&v417.size.width;
          v147.n128_u64[0] = *&v417.size.height;
          v148.n128_u64[0] = fmin(v395, v139);
          v149.n128_f64[0] = v76;
          PKSizeAlignedInRect(v143, v148, v149, v144, v145, v146, v147, v150);
          [(UILabel *)primaryLabel setFrame:?];
        }

        memset(&v416, 0, sizeof(v416));
        v151 = rect.size.width;
        CGRectDivide(rect, &v416, &rect, v79, CGRectMinYEdge);
        if (!self->_isTemplateLayout)
        {
          secondaryLabel = self->_secondaryLabel;
          v153 = PKContentAlignmentMake();
          v154.n128_u64[0] = *&v416.origin.x;
          v155.n128_u64[0] = *&v416.origin.y;
          v156.n128_u64[0] = *&v416.size.width;
          v157.n128_u64[0] = *&v416.size.height;
          v158.n128_u64[0] = fmin(v396, v151);
          v159.n128_f64[0] = v79;
          PKSizeAlignedInRect(v153, v158, v159, v154, v155, v156, v157, v160);
          [(UILabel *)secondaryLabel setFrame:?];
        }

        memset(&v415, 0, sizeof(v415));
        v161 = rect.size.width;
        CGRectDivide(rect, &v415, &rect, v84, CGRectMinYEdge);
        v169 = v411;
        if (!self->_isTemplateLayout)
        {
          tertiaryLabel = self->_tertiaryLabel;
          v171 = PKContentAlignmentMake();
          v172.n128_u64[0] = *&v415.origin.x;
          v173.n128_u64[0] = *&v415.origin.y;
          v174.n128_u64[0] = *&v415.size.width;
          v175.n128_u64[0] = *&v415.size.height;
          v176.n128_u64[0] = fmin(v82, v161);
          v177.n128_f64[0] = v84;
          PKSizeAlignedInRect(v171, v176, v177, v172, v173, v174, v175, v178);
          [(UILabel *)tertiaryLabel setFrame:?];
        }

        v421.size.height = v88;
        avatarView = self->_avatarView;
        v180 = v410;
        if (avatarView)
        {
          v181 = v402;
          if (self->_isTemplateLayout)
          {
LABEL_89:
            v182 = v401 + v88;
            v183 = height;
            goto LABEL_152;
          }
        }

        else
        {
          v181 = v402;
          if (!self->_primaryImage)
          {
            goto LABEL_89;
          }

          avatarView = self->_primaryImageView;
          if (!avatarView || self->_isTemplateLayout)
          {
            goto LABEL_89;
          }
        }

        v164.n128_u64[0] = *&v421.origin.x;
        v165.n128_u64[0] = *&v421.origin.y;
        v166.n128_u64[0] = *&v421.size.width;
        v162.n128_u64[0] = 0x4043000000000000;
        v163.n128_u64[0] = 0x4043000000000000;
        v167.n128_f64[0] = v88;
        PKSizeAlignedInRect(v393, v162, v163, v164, v165, v166, v167, v168);
        [avatarView setFrame:?];
        goto LABEL_89;
      }
    }

    else
    {
    }

    v57 = 2;
    goto LABEL_38;
  }

  PKContentAlignmentMake();
  [(UILabel *)self->_primaryLabel setNumberOfLines:2];
  text10 = [(UILabel *)self->_transactionValueLabel text];
  v36 = [text10 length];

  if (self->_showsDisclosureView)
  {
    v425.origin.x = x + 16.0;
    v425.origin.y = v32;
    v425.size.width = v33;
    v425.size.height = v34;
    CGRectDivide(v425, &slice, &remainder, 25.0, v10);
    if (!self->_isTemplateLayout)
    {
      v44 = self->_disclosureView;
      v39.n128_u64[0] = *&slice.origin.x;
      v40.n128_u64[0] = *&slice.origin.y;
      v41.n128_u64[0] = *&slice.size.width;
      v42.n128_u64[0] = *&slice.size.height;
      v37.n128_u64[0] = 25.0;
      v38.n128_u64[0] = 25.0;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v37, v38, v39, v40, v41, v42, v43);
      [(UIImageView *)v44 setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, 8.0, v10);
  }

  if (self->_primaryImage && self->_primaryImageView || self->_avatarView)
  {
    v397 = v28;
    if (v36)
    {
      [(UILabel *)self->_transactionValueLabel sizeThatFits:remainder.size.width, remainder.size.height];
      v46 = v45;
      v48 = v47;
    }

    else
    {
      v46 = *MEMORY[0x1E695F060];
      v48 = *(MEMORY[0x1E695F060] + 8);
    }

    font3 = [(UILabel *)self->_transactionValueLabel font];
    [font3 lineHeight];
    v186 = v185;

    memset(&v421, 0, sizeof(v421));
    CGRectDivide(remainder, &v421, &remainder, v186, CGRectMinYEdge);
    if (self->_avatarView)
    {
      v187 = v186 - v20;
      memset(&v420, 0, sizeof(v420));
      CGRectDivide(v421, &v420, &v421, v187, v9);
      if (!self->_isTemplateLayout)
      {
        [(CNAvatarView *)self->_avatarView setHidden:0];
        primaryImageView = self->_avatarView;
LABEL_94:
        v189 = PKContentAlignmentMake();
        v190.n128_u64[0] = *&v420.origin.x;
        v191.n128_u64[0] = *&v420.origin.y;
        v192.n128_u64[0] = *&v420.size.width;
        v193.n128_u64[0] = *&v420.size.height;
        v194.n128_f64[0] = v187;
        v195.n128_f64[0] = v187;
        PKSizeAlignedInRect(v189, v194, v195, v190, v191, v192, v193, v196);
        [primaryImageView setFrame:?];
      }
    }

    else
    {
      if (!self->_primaryImage || !self->_primaryImageView)
      {
        goto LABEL_96;
      }

      v187 = v186 - v20;
      memset(&v420, 0, sizeof(v420));
      CGRectDivide(v421, &v420, &v421, v187, v9);
      if (!self->_isTemplateLayout)
      {
        [(UIImageView *)self->_primaryImageView setHidden:0];
        primaryImageView = self->_primaryImageView;
        goto LABEL_94;
      }
    }

    CGRectDivide(v421, &v420, &v421, 13.0, v9);
LABEL_96:
    v197 = fmin(v46, v421.size.width);
    v405 = *(MEMORY[0x1E695F058] + 16);
    v408 = *MEMORY[0x1E695F058];
    v420.origin = *MEMORY[0x1E695F058];
    v420.size = v405;
    CGRectDivide(v421, &v420, &v421, v197, v9);
    if (!self->_isTemplateLayout)
    {
      v198 = self->_transactionValueLabel;
      v199 = PKContentAlignmentMake();
      v200.n128_u64[0] = *&v420.origin.x;
      v201.n128_u64[0] = *&v420.origin.y;
      v202.n128_u64[0] = *&v420.size.width;
      v203.n128_u64[0] = *&v420.size.height;
      v204.n128_f64[0] = v197;
      v205.n128_u64[0] = v48;
      PKSizeAlignedInRect(v199, v204, v205, v200, v201, v202, v203, v206);
      [(UILabel *)v198 setFrame:?];
    }

    v419 = v421;
    rect.origin = v408;
    rect.size = v405;
    v207 = *MEMORY[0x1E695F060];
    v208 = *(MEMORY[0x1E695F060] + 8);
    v209 = *&v208;
    v210 = *MEMORY[0x1E695F060];
    if (v412)
    {
      [(UILabel *)self->_badgeLabel sizeThatFits:v421.size.width, v421.size.height];
      v210 = v211;
      v209 = v212;
    }

    if ((isHidden & 1) == 0)
    {
      [(UIImageView *)self->_bonusImageView sizeThatFits:v421.size.width, v421.size.height];
      v207 = v213;
      v208 = v214;
    }

    v215 = v401 + v186;
    v216 = v397 + v210 + v207 + 6.0;
    if (v216 <= v421.size.width)
    {
      CGRectDivide(v419, &v419, &rect, v397 + v210 + v207 + 6.0, v10);
    }

    else
    {
      CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
      CGRectDivide(remainder, &v419, &remainder, v186, CGRectMinYEdge);
      CGRectDivide(v419, &v419, &rect, v216, v9);
      v215 = v215 + v186 + 5.0;
    }

    if (v412)
    {
      CGRectDivide(v419, &rect, &v419, v210 + 6.0, v10);
      if (!self->_isTemplateLayout)
      {
        v217 = PKContentAlignmentMake();
        v218.n128_u64[0] = *&rect.origin.x;
        v219.n128_u64[0] = *&rect.origin.y;
        v220.n128_u64[0] = *&rect.size.width;
        v221.n128_u64[0] = *&rect.size.height;
        v222.n128_f64[0] = v210;
        v223.n128_u64[0] = v209;
        PKSizeAlignedInRect(v217, v222, v223, v218, v219, v220, v221, v224);
        rect.origin.x = v225;
        rect.origin.y = v226;
        rect.size.width = v227;
        rect.size.height = v228;
        [(UILabel *)self->_badgeLabel setFrame:?];
      }
    }

    v229 = v215;
    if ((isHidden & 1) == 0)
    {
      memset(&v417, 0, sizeof(v417));
      IsEmpty = CGRectIsEmpty(rect);
      v231 = rect.size.height;
      CGRectDivide(v419, &v417, &v419, v207, v10);
      if (!self->_isTemplateLayout)
      {
        if (IsEmpty)
        {
          v231 = v208;
        }

        v232 = PKContentAlignmentMake();
        v233.n128_u64[0] = *&v417.origin.x;
        v234.n128_u64[0] = *&v417.origin.y;
        v235.n128_u64[0] = *&v417.size.width;
        v236.n128_u64[0] = *&v417.size.height;
        v237.n128_f64[0] = v207;
        v238.n128_f64[0] = v231;
        PKSizeAlignedInRect(v232, v237, v238, v233, v234, v235, v236, v239);
        v417.origin.x = v240;
        v417.origin.y = v241;
        v417.size.width = v242;
        v417.size.height = v243;
        [(UIImageView *)self->_bonusImageView setFrame:?];
      }
    }

    if ((isHidden2 & 1) == 0)
    {
      memset(&v417, 0, sizeof(v417));
      CGRectDivide(v419, &v417, &v419, v397, v10);
      if (!self->_isTemplateLayout)
      {
        v244 = PKContentAlignmentMake();
        v245.n128_u64[0] = *&v417.origin.x;
        v246.n128_u64[0] = *&v417.origin.y;
        v247.n128_u64[0] = *&v417.size.width;
        v248.n128_u64[0] = *&v417.size.height;
        v249.n128_f64[0] = v397;
        v250.n128_u64[0] = v400;
        PKSizeAlignedInRect(v244, v249, v250, v245, v246, v247, v248, v251);
        v417.origin.x = v252;
        v417.origin.y = v253;
        v417.size.width = v254;
        v417.size.height = v255;
        [(UIImageView *)self->_transactionCategoryImageView setFrame:?];
      }
    }

    v256 = 1;
    goto LABEL_122;
  }

  v256 = 0;
  v229 = v401;
LABEL_122:
  v257 = remainder.size.width;
  [(UILabel *)self->_primaryLabel sizeThatFits:remainder.size.width, 3.40282347e38];
  v259 = v258;
  v261 = v260;
  [(UILabel *)self->_secondaryLabel sizeThatFits:v257, 3.40282347e38];
  v406 = v262;
  v264 = v263;
  [(UILabel *)self->_tertiaryLabel sizeThatFits:v257, 3.40282347e38];
  v409 = v265;
  v267 = v266;
  if (!self->_isTemplateLayout)
  {
    *&v268 = v229;
    v269 = remainder.origin.x;
    v270 = remainder.size.width;
    v271 = self->_primaryLabel;
    v272 = PKContentAlignmentMake();
    v273.n128_u64[0] = fmin(v259, v257);
    v274.n128_u64[0] = v261;
    v275.n128_f64[0] = v269;
    v229 = *&v268;
    v276.n128_u64[0] = v268;
    v277.n128_f64[0] = v270;
    v278.n128_u64[0] = v261;
    PKSizeAlignedInRect(v272, v273, v274, v275, v276, v277, v278, v279);
    [(UILabel *)v271 setFrame:?];
  }

  v182 = v229 + *&v261;
  if (*&v264 > 0.0)
  {
    v280 = v182 + 2.0;
    if (!self->_isTemplateLayout)
    {
      v281 = remainder.origin.x;
      v282 = remainder.size.width;
      v283 = self->_secondaryLabel;
      v284 = PKContentAlignmentMake();
      v285.n128_u64[0] = fmin(v406, v257);
      v286.n128_u64[0] = v264;
      v287.n128_f64[0] = v281;
      v288.n128_f64[0] = v280;
      v289.n128_f64[0] = v282;
      v290.n128_u64[0] = v264;
      PKSizeAlignedInRect(v284, v285, v286, v287, v288, v289, v290, v291);
      [(UILabel *)v283 setFrame:?];
    }

    v182 = v280 + *&v264;
  }

  v183 = height;
  v169 = v411;
  if (*&v267 > 0.0)
  {
    v292 = v182 + 2.0;
    if (!self->_isTemplateLayout)
    {
      v293 = remainder.origin.x;
      v294 = remainder.size.width;
      v295 = self->_tertiaryLabel;
      v296 = PKContentAlignmentMake();
      v297.n128_u64[0] = fmin(v409, v257);
      v169 = v411;
      v298.n128_u64[0] = v267;
      v299.n128_f64[0] = v293;
      v300.n128_f64[0] = v292;
      v301.n128_f64[0] = v294;
      v302.n128_u64[0] = v267;
      PKSizeAlignedInRect(v296, v297, v298, v299, v300, v301, v302, v303);
      [(UILabel *)v295 setFrame:?];
    }

    v182 = *&v267 + v292;
  }

  v180 = v410;
  if ((v256 & 1) == 0)
  {
    if (v36)
    {
      v304 = v182 + 2.0;
      [(UILabel *)self->_transactionValueLabel sizeThatFits:v257, 3.40282347e38];
      v307 = v306;
      if (!self->_isTemplateLayout)
      {
        v308 = remainder.origin.x;
        v309 = remainder.size.width;
        v310 = fmin(v305, v257);
        v311 = self->_transactionValueLabel;
        v312 = PKContentAlignmentMake();
        v313.n128_f64[0] = v310;
        v169 = v411;
        v314.n128_u64[0] = v307;
        v315.n128_f64[0] = v308;
        v316.n128_f64[0] = v304;
        v317.n128_f64[0] = v309;
        v318.n128_u64[0] = v307;
        PKSizeAlignedInRect(v312, v313, v314, v315, v316, v317, v318, v319);
        [(UILabel *)v311 setFrame:?];
      }

      v182 = v304 + *&v307;
    }

    if ((isHidden2 & 1) == 0)
    {
      v320 = v182 + 2.0;
      [(UIImageView *)self->_transactionCategoryImageView sizeThatFits:v257, 3.40282347e38];
      v323 = v322;
      if (!self->_isTemplateLayout)
      {
        v324 = v321;
        v325 = remainder.origin.x;
        v326 = remainder.size.width;
        v327 = self->_transactionCategoryImageView;
        v328 = PKContentAlignmentMake();
        v329.n128_u64[0] = v324;
        v330.n128_u64[0] = v323;
        v331.n128_f64[0] = v325;
        v332.n128_f64[0] = v320;
        v333.n128_f64[0] = v326;
        v169 = v411;
        v334.n128_u64[0] = v323;
        PKSizeAlignedInRect(v328, v329, v330, v331, v332, v333, v334, v335);
        [(UIImageView *)v327 setFrame:?];
      }

      v182 = v320 + *&v323;
    }

    if (v412)
    {
      v336 = v182 + 2.0;
      [(UILabel *)self->_badgeLabel sizeThatFits:v257, 3.40282347e38];
      v339 = v338;
      if (!self->_isTemplateLayout)
      {
        if (isHidden)
        {
          v340 = remainder.origin.x;
          v341 = remainder.size.width;
          v342 = fmin(v337, v257);
          v343 = self->_badgeLabel;
          v344 = PKContentAlignmentMake();
          v346.n128_f64[0] = v342;
          v347.n128_u64[0] = v339;
          v348.n128_f64[0] = v340;
          v349.n128_f64[0] = v336;
          v350.n128_f64[0] = v341;
          v351.n128_u64[0] = v339;
        }

        else
        {
          [(UIImageView *)self->_bonusImageView sizeThatFits:v257, 3.40282347e38];
          v353 = v352 + 10.0;
          v354 = remainder.origin.x;
          v355 = remainder.size.width;
          v356 = fmin(v352 + 10.0, v257);
          v357 = self->_bonusImageView;
          v358 = PKContentAlignmentMake();
          v359.n128_f64[0] = v356;
          v360.n128_u64[0] = v339;
          v361.n128_f64[0] = v354;
          v362.n128_f64[0] = v336;
          v363.n128_f64[0] = v355;
          v364.n128_u64[0] = v339;
          PKSizeAlignedInRect(v358, v359, v360, v361, v362, v363, v364, v365);
          [(UIImageView *)v357 setFrame:?];
          v366 = remainder.origin.x;
          v367 = remainder.size.width;
          v368 = PKContentAlignmentMake();
          v369.n128_f64[0] = v367 - (v353 + 12.0);
          v370.n128_u64[0] = v339;
          v371.n128_f64[0] = v366;
          v372.n128_f64[0] = v336;
          v373.n128_f64[0] = v367;
          v374.n128_u64[0] = v339;
          PKSizeAlignedInRect(v368, v369, v370, v371, v372, v373, v374, v375);
          v377 = v376;
          v379 = v378;
          v381 = v380;
          v383 = v382;
          v343 = self->_badgeLabel;
          v344 = PKContentAlignmentMake();
          v346.n128_f64[0] = v356;
          v347.n128_u64[0] = v339;
          v348.n128_u64[0] = v377;
          v349.n128_u64[0] = v379;
          v350.n128_u64[0] = v381;
          v351.n128_u64[0] = v383;
          v169 = v411;
        }

        PKSizeAlignedInRect(v344, v346, v347, v348, v349, v350, v351, v345);
        [(UILabel *)v343 setFrame:?];
      }

      v182 = v336 + *&v339;
    }

    v180 = v410;
  }

  v181 = v402;
LABEL_152:
  v384 = v181 + v182;
  v427.origin.x = v403;
  v427.origin.y = v169;
  v427.size.width = v180;
  v427.size.height = v183;
  v385 = CGRectGetWidth(v427);
  v386 = v384;
  result.height = v386;
  result.width = v385;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentTransactionView;
  [(PKPaymentTransactionView *)&v3 layoutSubviews];
  [(PKPaymentTransactionView *)self bounds];
  [(PKPaymentTransactionView *)self _layoutWithBounds:?];
}

@end